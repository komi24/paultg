.class public Lcom/google/appinventor/components/runtime/SQLite;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SQLite.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVANCED:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "This component can be used to manage your private database."
    iconName = "images/sqlite.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SQLite$MyDb;
    }
.end annotation


# instance fields
.field private DB_NAME:Ljava/lang/String;

.field private DB_VERSION:I

.field TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private rowsAffected:I

.field private sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 32
    const-string/jumbo v1, "SQLite"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SQLite;->TAG:Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "SQLite.sdb"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SQLite;->DB_NAME:Ljava/lang/String;

    .line 36
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/SQLite;->DB_VERSION:I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/SQLite;->rowsAffected:I

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$MyDb;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;-><init>(Lcom/google/appinventor/components/runtime/SQLite;Landroid/content/Context;)V

    .line 45
    .local v0, "myDb":Lcom/google/appinventor/components/runtime/SQLite$MyDb;
    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/SQLite;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/SQLite;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->DB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/SQLite;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/SQLite;

    .prologue
    .line 31
    iget v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->DB_VERSION:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/SQLite;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/SQLite;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SQLite;->determineRowsAffected(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private determineRowsAffected(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 106
    const-string/jumbo v1, "select total_changes()"

    .line 108
    .local v1, "sql":Ljava/lang/String;
    iput v3, p0, Lcom/google/appinventor/components/runtime/SQLite;->rowsAffected:I

    .line 110
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 111
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/SQLite;->rowsAffected:I

    .line 115
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_1
    return-void
.end method

.method public static toCsvRow([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "row"    # [Ljava/lang/String;

    .prologue
    .line 120
    const-string/jumbo v3, ","

    .line 121
    .local v3, "fieldDelim":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v2, "csvRow":Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 123
    .local v0, "anItem":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "anItem":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 129
    :cond_1
    return-object v6
.end method


# virtual methods
.method public DisplayTables()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to retrieve list of existing tables from the database"
        userVisible = true
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$MyDb;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;-><init>(Lcom/google/appinventor/components/runtime/SQLite;Landroid/content/Context;)V

    .line 91
    .local v0, "myDb":Lcom/google/appinventor/components/runtime/SQLite$MyDb;
    const-string/jumbo v2, "SELECT tbl_name FROM sqlite_master WHERE type=\'table\' and tbl_name != \'android_metadata\'"

    .line 92
    .local v2, "selectStatement":Ljava/lang/String;
    # invokes: Lcom/google/appinventor/components/runtime/SQLite$MyDb;->selectQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->access$000(Lcom/google/appinventor/components/runtime/SQLite$MyDb;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 94
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/YailList;
    return-object v1
.end method

.method public DropTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to drop / delete table from database. Please note that this event will DELETE any data you may have on the table and will then delete table from the database. After this operation is completed, it can not be undone!"
        userVisible = true
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$MyDb;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;-><init>(Lcom/google/appinventor/components/runtime/SQLite;Landroid/content/Context;)V

    .line 80
    .local v0, "myDb":Lcom/google/appinventor/components/runtime/SQLite$MyDb;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drop table if exists "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "query":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SQLite;->RunQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public RowsAffected()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the number of rows affected"
    .end annotation

    .prologue
    .line 56
    iget v0, p0, Lcom/google/appinventor/components/runtime/SQLite;->rowsAffected:I

    return v0
.end method

.method public RunQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to run any valid SQLite query"
        userVisible = true
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/google/appinventor/components/runtime/SQLite$MyDb;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;-><init>(Lcom/google/appinventor/components/runtime/SQLite;Landroid/content/Context;)V

    .line 63
    .local v0, "myDb":Lcom/google/appinventor/components/runtime/SQLite$MyDb;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "select"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "explain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    # invokes: Lcom/google/appinventor/components/runtime/SQLite$MyDb;->selectQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->access$000(Lcom/google/appinventor/components/runtime/SQLite$MyDb;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 72
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/YailList;
    :goto_0
    return-object v1

    .line 70
    .end local v1    # "result":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_1
    # invokes: Lcom/google/appinventor/components/runtime/SQLite$MyDb;->execSql(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/SQLite$MyDb;->access$100(Lcom/google/appinventor/components/runtime/SQLite$MyDb;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .restart local v1    # "result":Lcom/google/appinventor/components/runtime/util/YailList;
    goto :goto_0
.end method
