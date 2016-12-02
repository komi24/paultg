.class Lcom/google/appinventor/components/runtime/SQLite$MyDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SQLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDb"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SQLite;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/SQLite;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->this$0:Lcom/google/appinventor/components/runtime/SQLite;

    .line 139
    # getter for: Lcom/google/appinventor/components/runtime/SQLite;->DB_NAME:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SQLite;->access$200(Lcom/google/appinventor/components/runtime/SQLite;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    # getter for: Lcom/google/appinventor/components/runtime/SQLite;->DB_VERSION:I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/SQLite;->access$300(Lcom/google/appinventor/components/runtime/SQLite;)I

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/SQLite$MyDb;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/SQLite$MyDb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->selectQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/SQLite$MyDb;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/SQLite$MyDb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->execSql(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method private execSql(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 209
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->this$0:Lcom/google/appinventor/components/runtime/SQLite;

    # invokes: Lcom/google/appinventor/components/runtime/SQLite;->determineRowsAffected(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/SQLite;->access$400(Lcom/google/appinventor/components/runtime/SQLite;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 214
    const-string/jumbo v3, "true"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    return-object v3

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Landroid/database/SQLException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->this$0:Lcom/google/appinventor/components/runtime/SQLite;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SQLite;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error executing query. Error is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string/jumbo v3, "false"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private selectQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 12
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, ","

    .line 160
    .local v3, "delimiter":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 163
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 164
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "columnNames":[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/SQLite;->toCsvRow([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .local v8, "sbRow":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 173
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "row":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 177
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 181
    .end local v0    # "columnNames":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "row":Ljava/lang/String;
    .end local v8    # "sbRow":Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_4
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->this$0:Lcom/google/appinventor/components/runtime/SQLite;

    # invokes: Lcom/google/appinventor/components/runtime/SQLite;->determineRowsAffected(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v9, v2}, Lcom/google/appinventor/components/runtime/SQLite;->access$400(Lcom/google/appinventor/components/runtime/SQLite;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 192
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 195
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v9

    return-object v9

    .line 187
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "-----------"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error was: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 146
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 151
    return-void
.end method
