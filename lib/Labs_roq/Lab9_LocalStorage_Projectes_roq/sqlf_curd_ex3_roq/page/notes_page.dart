import 'package:flutter/material.dart';
// استيراد الحزمة بشكل صحيح
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex3_roq/db/notes_database.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex3_roq/page/edit_note_page.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex3_roq/widget/note_card_widget.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex3_roq/model/note.dart';
import 'note_detail_page.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<Note> notes = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    refreshNotes();
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();
    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);
    notes = await NotesDatabase.instance.readAllNotes();
    setState(() => isLoading = false);
  }

  Widget buildNotes() {
    return MasonryGridView.count(
      // استخدام MasonryGridView بدلاً من StaggeredGridView
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return GestureDetector(
          onTap: () async {
            await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NoteDetailPage(noteId: note.id!),
            ));
            refreshNotes();
          },
          child: NoteCardWidget(note: note, index: index),
        );
      },
    );
  }

  // بديل آخر إذا لم تعمل MasonryGridView
  Widget buildNotesAlternative() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 0.8,
      ),
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return GestureDetector(
          onTap: () async {
            await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NoteDetailPage(noteId: note.id!),
            ));
            refreshNotes();
          },
          child: NoteCardWidget(note: note, index: index),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          SizedBox(width: 12),
        ],
      ),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : notes.isEmpty
            ? Text(
          'No Notes',
          style: TextStyle(color: Colors.white, fontSize: 24),
        )
            : buildNotes(), // أو buildNotesAlternative()
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddEditNotePage()),
          );
          refreshNotes();
        },
      ),
    );
  }
}