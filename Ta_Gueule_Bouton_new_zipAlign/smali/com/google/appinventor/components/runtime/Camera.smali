.class public Lcom/google/appinventor/components/runtime/Camera;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Camera.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to take a picture using the device\'s camera. After the picture is taken, the name of the file on the phone containing the picture is available as an argument to the AfterPicture event. The file name can be used, for example, to set the Picture property of an Image component.<p>You can also use Camera to perform a ScreenShot of the screen."
    iconName = "images/camera.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.CAMERA,android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final CAMERA_INTENT:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field private static final CAMERA_OUTPUT:Ljava/lang/String; = "output"


# instance fields
.field private TAG:Ljava/lang/String;

.field private camera:Landroid/hardware/Camera;

.field cameraParams:Landroid/hardware/Camera$Parameters;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private enabled:Z

.field private hasFlash:Ljava/lang/String;

.field private imageFile:Landroid/net/Uri;

.field private isFlashOn:Z

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->enabled:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->hasFlash:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "CameraComponent"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->TAG:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 81
    return-void
.end method

.method private deleteFile(Landroid/net/Uri;)V
    .locals 5
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 172
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "fileToDelete":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const-string/jumbo v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleted file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string/jumbo v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got security exception trying to delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCamera()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 235
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    .line 236
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Camera Error. Failed to Open. Error: "

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveFile(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 374
    const/4 v3, 0x0

    .line 375
    .local v3, "success":Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 377
    .local v2, "fos":Ljava/io/FileOutputStream;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 378
    .local v4, "v1":Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 379
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 380
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 381
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    const/16 v5, 0x64

    :try_start_1
    invoke-virtual {v0, p2, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 389
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 391
    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 402
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "v1":Landroid/view/View;
    :goto_0
    return-object v5

    .line 389
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "v1":Landroid/view/View;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 396
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "v1":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    const/16 v6, 0x2c3

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, p0, p3, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 402
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string/jumbo v5, ""

    goto :goto_0

    .line 394
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "v1":Landroid/view/View;
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    const/16 v6, 0x3e9

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, p0, p3, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 398
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "v1":Landroid/view/View;
    :catch_1
    move-exception v1

    .line 399
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    const/16 v6, 0x2c4

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, p0, p3, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private turnOffFlash()V
    .locals 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->isFlashOn:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->isFlashOn:Z

    goto :goto_0
.end method

.method private turnOnFlash()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->isFlashOn:Z

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->isFlashOn:Z

    goto :goto_0
.end method


# virtual methods
.method public AfterPicture(Ljava/lang/String;)V
    .locals 3
    .param p1, "image"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 191
    const-string/jumbo v0, "AfterPicture"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public AfterSnapshotDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 368
    const-string/jumbo v0, "AfterSnapshotDevice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public FlashtOn(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If enabled, turns flash on. If false and if flash is on, then it will turn it off"
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Camera;->HasFlash()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camera;->isFlashOn:Z

    if-eq v0, p1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Camera;->getCamera()V

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->cameraParams:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 211
    if-eqz p1, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Camera;->turnOnFlash()V

    goto :goto_0

    .line 214
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Camera;->turnOffFlash()V

    goto :goto_0
.end method

.method public HasFlash()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks to see if device has flash or not"
    .end annotation

    .prologue
    .line 222
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->hasFlash:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.camera.flash"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->hasFlash:Ljava/lang/String;

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camera;->hasFlash:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 228
    .local v0, "temp":Z
    return v0
.end method

.method public SnapshotDevice(Ljava/lang/String;)V
    .locals 14
    .param p1, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows you to snapshot the device screen and save into a file. Currently, only .jpg extension is supported. Please make sure that your imageName ends with .jpg"
    .end annotation

    .prologue
    const/16 v13, 0x2c4

    const/4 v12, 0x0

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 305
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v9, "SnapshotDevice"

    const/16 v10, 0x2c2

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 364
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Trying to snapshot with image name of: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "state":Ljava/lang/String;
    const-string/jumbo v8, "mounted"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 314
    const-string/jumbo v8, "mounted_ro"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 315
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v9, "SnapshotDevice"

    const/16 v10, 0x2c0

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 321
    :goto_1
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Media error for for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_1
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v9, "SnapshotDevice"

    const/16 v10, 0x2c1

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 328
    :cond_2
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v8}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 329
    .local v7, "v1":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 330
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 333
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 335
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 336
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 337
    .local v4, "format":Landroid/graphics/Bitmap$CompressFormat;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x46

    invoke-virtual {v0, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 344
    :goto_2
    :try_start_0
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Trying to get file and perform SaveAs for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 347
    .local v3, "file":Ljava/io/File;
    const-string/jumbo v8, "SaveAs"

    invoke-direct {p0, v3, v4, v8}, Lcom/google/appinventor/components/runtime/Camera;->saveFile(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "savedImageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SaveAs result was: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 352
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Error in SaveAs. Error number is:708"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v9, "AfterSnapshotDevice"

    const/16 v10, 0x2c4

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 360
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "savedImageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "There was IO exception. Error is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v9, "SnapshotDevice"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v9, v13, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 339
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 340
    .restart local v4    # "format":Landroid/graphics/Bitmap$CompressFormat;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto/16 :goto_2

    .line 355
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "savedImageName":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Camera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invoking AfterSnapshotDevice with image name of:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Camera;->AfterSnapshotDevice(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public TakePicture()V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 104
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    const-string/jumbo v5, "CameraComponent"

    const-string/jumbo v6, "External storage is available and writable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/Pictures/app_inventor_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    .line 113
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "_data"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v5, "mime_type"

    const-string/jumbo v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v5, "title"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v5, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    if-nez v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v5

    iput v5, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    .line 122
    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, "imageUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "output"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    .end local v1    # "imageUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string/jumbo v5, "mounted_ro"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v6, "TakePicture"

    const/16 v7, 0x2c0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v6, "TakePicture"

    const/16 v7, 0x2c1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Camera;->turnOffFlash()V

    .line 262
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Camera;->turnOffFlash()V

    .line 256
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Camera;->camera:Landroid/hardware/Camera;

    .line 250
    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 145
    const-string/jumbo v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Returning result. Request code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v2, p0, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    if-ne p1, v2, :cond_2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->AfterPicture(Ljava/lang/String;)V

    .line 169
    .end local v0    # "image":Ljava/io/File;
    :goto_0
    return-void

    .line 152
    .restart local v0    # "image":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->deleteFile(Landroid/net/Uri;)V

    .line 154
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, "tryImageUri":Landroid/net/Uri;
    const-string/jumbo v2, "CameraComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling Camera.AfterPicture with image path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->AfterPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v1    # "tryImageUri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v2, "CameraComponent"

    const-string/jumbo v3, "Couldn\'t find an image file from the Camera result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "TakePicture"

    const/16 v4, 0xc9

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    .end local v0    # "image":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Camera;->imageFile:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Camera;->deleteFile(Landroid/net/Uri;)V

    goto :goto_0
.end method
