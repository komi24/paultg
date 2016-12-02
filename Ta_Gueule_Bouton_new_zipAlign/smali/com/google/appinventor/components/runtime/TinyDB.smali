.class public Lcom/google/appinventor/components/runtime/TinyDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TinyDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "TinyDB is a non-visible component that stores data for an app. <p> Apps created with App Inventor are initialized each time they run: If an app sets the value of a variable and the user then quits the app, the value of that variable will not be remembered the next time the app is run. In contrast, TinyDB is a <em> persistent </em> data store for the app, that is, the data stored there will be available each time the app is run. An example might be a game that saves the high score and retrieves it each time the game is played. </<p> <p> Data items are strings stored under <em>tags</em> . To store a data item, you specify the tag it should be stored under.  Subsequently, you can retrieve the data that was stored under a given tag. </p><p> There is only one data store per app. Even if you have multiple TinyDB components, they will use the same data store. To get the effect of separate stores, use different keys. Also each app has its own data store. You cannot use TinyDB to pass data between two different apps on the phone, although you <em>can</em> use TinyDb to shares data between the different screens of a multi-screen app. </p> <p>When you are developing apps using the AI Companion, all the apps using that companion will share the same TinyDb.  That sharing will disappear once the apps are packaged.  But, during development, you should be careful to clear the TinyDb each time you start working on a new app.</p>"
    iconName = "images/tinyDB.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private dbName:Ljava/lang/String;

.field private isRepl:Z

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 76
    const-string/jumbo v0, "TinyDB1"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dbName:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->isRepl:Z

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 88
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->context:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->isRepl:Z

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dbName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TinyDB;->DatabaseName(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private AbsoluteFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    :goto_0
    return-object v2

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyDB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 209
    .local v0, "dirPath":Ljava/io/File;
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TinyDB;->isRepl:Z

    if-eqz v2, :cond_1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/AppInventor/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "dirPath":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v0    # "dirPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 216
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/TinyDB;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/TinyDB;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/TinyDB;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TinyDB;->AbsoluteFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ClearAll()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 273
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 274
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    return-void
.end method

.method public DatabaseName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public DatabaseName(Ljava/lang/String;)V
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Used to change the default TinyDB database name. The default TinyDB name is TinyDB1"
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dbName:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 100
    return-void
.end method

.method public DumpToFile(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/16 v4, 0x83a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    const-string/jumbo v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    if-eqz p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v1, "AppendTo"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v1, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v1, "SaveFile"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v1, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyDB$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/TinyDB$1;-><init>(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public GetTags()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 250
    .local v1, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 252
    return-object v0
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueIfTagNotThere"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 230
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .end local p2    # "valueIfTagNotThere":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "valueIfTagNotThere":Ljava/lang/Object;
    :cond_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 234
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string/jumbo v3, "Value failed to convert from JSON."

    const-string/jumbo v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public ImportFromFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 118
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 120
    .local v1, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string/jumbo v3, "Value failed to convert to JSON."

    const-string/jumbo v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 280
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 281
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    return-void
.end method
