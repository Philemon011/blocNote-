import 'package:blocnote/models/models.dart';
import 'package:blocnote/models/requests/create_note_request.dart';
import 'package:blocnote/models/requests/update_note_request.dart';

abstract class BaseNoteRepository {
  Future<AppResponse<List<NoteItem>?>> getMany({
    required int currentPage,
    int pageSize = 15,
  });

  Future<AppResponse<NoteItem?>> create(CreateNoteRequest request);

  Future<AppResponse<NoteItem?>> update(UpdateNoteRequest request, int id);

  Future<AppResponse<NoteItem?>> getSingle(int id);

  Future<AppResponse<int?>> deleteSingle(int id);
}