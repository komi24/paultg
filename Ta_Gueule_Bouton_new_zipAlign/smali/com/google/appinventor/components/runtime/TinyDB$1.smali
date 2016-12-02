.class Lcom/google/appinventor/components/runtime/TinyDB$1;
.super Ljava/lang/Object;
.source "TinyDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyDB;->DumpToFile(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TinyDB;

.field final synthetic val$append:Z

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyDB$1;->val$fileName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/TinyDB$1;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/TinyDB;->GetTags()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 149
    .local v8, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v11, "st":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "||"

    .line 151
    .local v10, "separator":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "aTag":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    # getter for: Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v13}, Lcom/google/appinventor/components/runtime/TinyDB;->access$000(Lcom/google/appinventor/components/runtime/TinyDB;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-interface {v13, v1, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 154
    .end local v1    # "aTag":Ljava/lang/String;
    :cond_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "jsonData":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 195
    :goto_1
    return-void

    .line 161
    :cond_1
    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->val$fileName:Ljava/lang/String;

    # invokes: Lcom/google/appinventor/components/runtime/TinyDB;->AbsoluteFileName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/google/appinventor/components/runtime/TinyDB;->access$100(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "filepath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 167
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->val$append:Z

    invoke-direct {v4, v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 181
    .local v4, "fileWriter":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 182
    .local v9, "out":Ljava/io/OutputStreamWriter;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 184
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 185
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 186
    .end local v4    # "fileWriter":Ljava/io/FileOutputStream;
    .end local v9    # "out":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->val$append:Z

    if-eqz v12, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/TinyDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    const-string/jumbo v14, "AppendTo"

    const/16 v15, 0x838

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 169
    .restart local v2    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->val$append:Z

    if-eqz v12, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/TinyDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    const-string/jumbo v14, "AppendTo"

    const/16 v15, 0x837

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/TinyDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    const-string/jumbo v14, "SaveFile"

    const/16 v15, 0x837

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 191
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/TinyDB;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    const-string/jumbo v14, "SaveFile"

    const/16 v15, 0x838

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-virtual/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
