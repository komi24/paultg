.class public Lcom/google/appinventor/components/runtime/SoundSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SoundSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Physical world component that can detect such data as: sound amplitude (measurement of the degree of change [positive or negative] ).</p>"
    iconName = "images/soundsensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECORD_AUDIO"
.end annotation


# static fields
.field private static final MAX_AMPLITUTE:I = 0x8000


# instance fields
.field private TAG:Ljava/lang/String;

.field private enabled:Z

.field private mRecorder:Landroid/media/MediaRecorder;

.field private maxSoundLevel:D

.field private soundLevel:D

.field private timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    .line 20
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->maxSoundLevel:D

    .line 23
    new-instance v0, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v2, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 24
    const-string/jumbo v0, "SoundSensor"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->TAG:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->soundLevel:D

    .line 32
    return-void
.end method


# virtual methods
.method public Amplitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    .line 144
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Decibel()D
    .locals 4

    .prologue
    .line 152
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->Amplitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Listen(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    .line 61
    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    .line 86
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    .line 70
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 71
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 72
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 74
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    const-string/jumbo v2, "/dev/null"

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 78
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 79
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 80
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error with sound. Error is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Listen()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    return v0
.end method

.method public MaxSoundlevel()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->maxSoundLevel:D

    return-wide v0
.end method

.method public MaxSoundlevel(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 44
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->maxSoundLevel:D

    .line 45
    return-void
.end method

.method public SoundChanged(D)V
    .locals 4
    .param p1, "value"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 52
    const-string/jumbo v0, "SoundChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public SoundLevel()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->soundLevel:D

    return-wide v0
.end method

.method public alarm()V
    .locals 6

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->Amplitude()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->maxSoundLevel:D

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->soundLevel:D

    .line 130
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->soundLevel:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/SoundSensor;->SoundChanged(D)V

    .line 132
    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    .line 176
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SoundSensor;->Listen(Z)V

    .line 160
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundSensor;->stopListening()V

    .line 167
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundSensor;->mRecorder:Landroid/media/MediaRecorder;

    .line 110
    :cond_0
    return-void
.end method
