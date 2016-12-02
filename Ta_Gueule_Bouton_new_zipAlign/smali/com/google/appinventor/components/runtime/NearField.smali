.class public Lcom/google/appinventor/components/runtime/NearField;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NearField.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnNewIntentListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component to provide NFC capabilities.For now this component supports the reading and writing of text tags only (if supported by the device)</p><p>In order to read and write text tags, the component must have its <code>ReadMode</code> property set to True or False respectively.</p>"
    iconName = "images/nearfield.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.NFC"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nearfield"


# instance fields
.field private activity:Landroid/app/Activity;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private readMode:Z

.field protected requestCode:I

.field private tagContent:Ljava/lang/String;

.field private textToWrite:Ljava/lang/String;

.field private writeType:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 45
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->tagContent:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    .line 61
    iput v1, p0, Lcom/google/appinventor/components/runtime/NearField;->writeType:I

    .line 62
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 70
    const-string/jumbo v0, "nearfield"

    const-string/jumbo v1, "Nearfield component created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public LastMessage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "nearfield"

    const-string/jumbo v1, "String message method stared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->tagContent:Ljava/lang/String;

    return-object v0
.end method

.method public ReadMode(Z)V
    .locals 3
    .param p1, "newMode"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 135
    const-string/jumbo v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Read mode set to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    .line 137
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public ReadMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 112
    const-string/jumbo v0, "nearfield"

    const-string/jumbo v1, "boolean method stared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    return v0
.end method

.method public TagRead(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 82
    const-string/jumbo v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tag read: got message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NearField;->tagContent:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "TagRead"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public TagWritten()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 89
    const-string/jumbo v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tag written: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v0, "TagWritten"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public TextToWrite()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 121
    const-string/jumbo v0, "nearfield"

    const-string/jumbo v1, "String message method stared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    return-object v0
.end method

.method public TextToWrite(Ljava/lang/String;)V
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 147
    const-string/jumbo v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Text to write set to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    .line 149
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NearField;->readMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/NearField;->writeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NearField;->textToWrite:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public WriteType()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 127
    iget v0, p0, Lcom/google/appinventor/components/runtime/NearField;->writeType:I

    return v0
.end method

.method public onDelete()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string/jumbo v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nearfield on onNewIntent.  Intent is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NearField;->resolveIntent(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    const-string/jumbo v0, "nearfield"

    const-string/jumbo v1, "OnPause method started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NearField;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->disableNFCAdapter(Landroid/app/Activity;Landroid/nfc/NfcAdapter;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NearField;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "nearfield"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Nearfield on onResume.  Intent is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method resolveIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const-string/jumbo v0, "nearfield"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolve intent. Intent is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 175
    invoke-static {p1, p0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->resolveNFCIntent(Landroid/content/Intent;Lcom/google/appinventor/components/runtime/NearField;)V

    .line 177
    :cond_0
    return-void
.end method
