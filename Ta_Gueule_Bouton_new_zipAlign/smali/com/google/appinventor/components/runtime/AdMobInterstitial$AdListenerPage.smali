.class public Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AdMobInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdListenerPage"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AdMobInterstitial;Landroid/content/Context;)V
    .locals 0
    .param p2, "arg2"    # Landroid/content/Context;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->mContext:Landroid/content/Context;

    .line 253
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 256
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "onAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdClosed()V

    .line 258
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 261
    const-string/jumbo v0, "AdMobListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdFailedToLoad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    # invokes: Lcom/google/appinventor/components/runtime/AdMobInterstitial;->getErrorReason(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->access$000(Lcom/google/appinventor/components/runtime/AdMobInterstitial;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    # invokes: Lcom/google/appinventor/components/runtime/AdMobInterstitial;->getErrorReason(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->access$000(Lcom/google/appinventor/components/runtime/AdMobInterstitial;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adFailedToLoadMessage:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    # invokes: Lcom/google/appinventor/components/runtime/AdMobInterstitial;->getErrorReason(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->access$000(Lcom/google/appinventor/components/runtime/AdMobInterstitial;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdLeftApplication()V

    .line 268
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 271
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->onAdLoadedMsg:Landroid/content/Context;

    .line 274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/AdMobInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdLoaded()V

    .line 275
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 278
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "onAdOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method
