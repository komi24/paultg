.class public Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;
.super Lcom/millennialmedia/android/RequestListener$RequestListenerImpl;
.source "MMediaInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MMediaInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdListenerPage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/MMediaInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/MMediaInterstitial;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MMediaInterstitial;

    invoke-direct {p0}, Lcom/millennialmedia/android/RequestListener$RequestListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 155
    const-string/jumbo v0, "MMediaListener"

    const-string/jumbo v1, "MMAdOverlayClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MMediaInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->AdClosed()V

    .line 157
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MMediaInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->AdExpanded()V

    .line 143
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MMediaInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->AdClicked()V

    .line 146
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 136
    const-string/jumbo v0, "MMediaListener"

    const-string/jumbo v1, "requestCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MMediaInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->AdLoaded()V

    .line 138
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 2
    .param p1, "mmAd"    # Lcom/millennialmedia/android/MMAd;
    .param p2, "error"    # Lcom/millennialmedia/android/MMException;

    .prologue
    .line 150
    const-string/jumbo v0, "MMediaListener"

    const-string/jumbo v1, "requestFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMediaInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MMediaInterstitial;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MMediaInterstitial;->AdFailedToLoad(Ljava/lang/String;)V

    .line 152
    return-void
.end method
