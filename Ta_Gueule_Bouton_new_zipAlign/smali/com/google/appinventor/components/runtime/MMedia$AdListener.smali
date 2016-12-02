.class public Lcom/google/appinventor/components/runtime/MMedia$AdListener;
.super Ljava/lang/Object;
.source "MMedia.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/MMedia;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/MMedia;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MMedia$AdListener;->this$0:Lcom/google/appinventor/components/runtime/MMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 3
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia$AdListener;->this$0:Lcom/google/appinventor/components/runtime/MMedia;

    # getter for: Lcom/google/appinventor/components/runtime/MMedia;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MMedia;->access$000(Lcom/google/appinventor/components/runtime/MMedia;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") overlay closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 3
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia$AdListener;->this$0:Lcom/google/appinventor/components/runtime/MMedia;

    # getter for: Lcom/google/appinventor/components/runtime/MMedia;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MMedia;->access$000(Lcom/google/appinventor/components/runtime/MMedia;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") overlay launched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 3
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia$AdListener;->this$0:Lcom/google/appinventor/components/runtime/MMedia;

    # getter for: Lcom/google/appinventor/components/runtime/MMedia;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MMedia;->access$000(Lcom/google/appinventor/components/runtime/MMedia;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") caching started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 3
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia$AdListener;->this$0:Lcom/google/appinventor/components/runtime/MMedia;

    # getter for: Lcom/google/appinventor/components/runtime/MMedia;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MMedia;->access$000(Lcom/google/appinventor/components/runtime/MMedia;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") single tap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 3
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia$AdListener;->this$0:Lcom/google/appinventor/components/runtime/MMedia;

    # getter for: Lcom/google/appinventor/components/runtime/MMedia;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MMedia;->access$000(Lcom/google/appinventor/components/runtime/MMedia;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") request succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 5
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;
    .param p2, "exception"    # Lcom/millennialmedia/android/MMException;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia$AdListener;->this$0:Lcom/google/appinventor/components/runtime/MMedia;

    # getter for: Lcom/google/appinventor/components/runtime/MMedia;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MMedia;->access$000(Lcom/google/appinventor/components/runtime/MMedia;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Millennial Media Ad ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/millennialmedia/android/MMAd;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") request failed with error: %d %s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method
