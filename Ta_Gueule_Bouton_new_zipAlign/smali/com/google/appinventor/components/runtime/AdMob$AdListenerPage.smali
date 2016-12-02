.class public Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AdMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdListenerPage"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdMob;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdMob;Landroid/content/Context;)V
    .locals 0
    .param p2, "arg2"    # Landroid/content/Context;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->mContext:Landroid/content/Context;

    .line 415
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 418
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "onAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdMob;->AdClosed()V

    .line 420
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "paramInt"    # I

    .prologue
    .line 423
    const-string/jumbo v0, "AdMobListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdFailedToLoad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    # invokes: Lcom/google/appinventor/components/runtime/AdMob;->getErrorReason(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/AdMob;->access$000(Lcom/google/appinventor/components/runtime/AdMob;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    # invokes: Lcom/google/appinventor/components/runtime/AdMob;->getErrorReason(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/AdMob;->access$000(Lcom/google/appinventor/components/runtime/AdMob;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/AdMob;->adFailedToLoadMessage:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AdMob;->adFailedToLoadMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/AdMob;->AdFailedToLoad(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdMob;->AdLeftApplication()V

    .line 430
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 433
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/AdMob;->onAdLoadedMsg:Landroid/content/Context;

    .line 436
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMob;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdMob;->AdLoaded()V

    .line 437
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 440
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "onAdOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method
