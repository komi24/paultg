.class public Lcom/google/appinventor/components/runtime/Sharing;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Sharing.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Sharing is a non-visible component that enables sharing files and/or messages between your app and other apps installed on a device. The component will display a list of the installed apps that can handle the information provided, and will allow the user to choose one to share the content with, for instance a mail app, a social network app, a texting app, and so on.<br>The file path can be taken directly from other components such as the Camera or the ImagePicker, but can also be specified directly to read from storage. Be aware that different devices treat storage differently, so a few things to try if, for instance, you have a file called arrow.gif in the folder <code>Appinventor/assets</code>, would be: <ul><li><code>\"file:///sdcard/Appinventor/assets/arrow.gif\"</code></li> or <li><code>\"/storage/Appinventor/assets/arrow.gif\"</code></li></ul>"
    iconName = "images/sharing.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field private attachment:Ljava/lang/String;

.field private chooserTitle:Ljava/lang/String;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private message:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->message:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->subject:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->chooserTitle:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->attachment:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sharing;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 61
    return-void
.end method


# virtual methods
.method public Attachment()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->attachment:Ljava/lang/String;

    return-object v0
.end method

.method public Attachment(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to attach a attache a file for sharing. "
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->attachment:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public Message()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->message:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Message to be shared"
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->message:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public ShareFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a file through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the file inserted on it."
    .end annotation

    .prologue
    .line 196
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sharing;->ShareFileWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public ShareFileWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares both a file and a message through any capable application installed on the phone by displaying a list of available apps and allowing the user to  choose one from the list. The selected app will open with the file and message inserted on it."
    .end annotation

    .prologue
    .line 207
    const-string/jumbo v7, "file://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 211
    .local v6, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 213
    const-string/jumbo v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "fileExtension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 215
    .local v3, "mime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v3, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "type":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.SEND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v4, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 221
    const-string/jumbo v7, "android.intent.extra.TEXT"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :cond_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 234
    .end local v1    # "fileExtension":Ljava/lang/String;
    .end local v3    # "mime":Landroid/webkit/MimeTypeMap;
    .end local v4    # "shareIntent":Landroid/content/Intent;
    .end local v5    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 228
    :cond_2
    const-string/jumbo v0, "ShareFile"

    .line 229
    .local v0, "eventName":Ljava/lang/String;
    const-string/jumbo v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 230
    const-string/jumbo v0, "ShareFileWithMessage"

    .line 231
    :cond_3
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v8, 0x7d1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v7, p0, v0, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ShareMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the message inserted on it."
    .end annotation

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public StartSharing()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows you to share the message & attachment"
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This block will be deprecated and should not be used. Please use ShareFile or ShareFileWithMessage blocks!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Subject()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public Subject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Subject to be shared"
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->subject:Ljava/lang/String;

    .line 66
    return-void
.end method
