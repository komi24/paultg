.class public Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;
.super Ljava/lang/Object;
.source "MobFoxInterstitial.java"

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MobFoxInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdListenerPage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/MobFoxInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/MobFoxInterstitial;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MobFoxInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MobFoxInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->AdExpanded()V

    .line 130
    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 1
    .param p1, "advertisement"    # Lcom/adsdk/sdk/Ad;
    .param p2, "completed"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MobFoxInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->AdClosed()V

    .line 126
    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 2
    .param p1, "advertisement"    # Lcom/adsdk/sdk/Ad;

    .prologue
    .line 108
    const-string/jumbo v0, "MobFoxInterstitial"

    const-string/jumbo v1, "MobFoxLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MobFoxInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->AdLoaded()V

    .line 110
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0
    .param p1, "advertisement"    # Lcom/adsdk/sdk/Ad;
    .param p2, "succeeded"    # Z

    .prologue
    .line 121
    return-void
.end method

.method public noAdFound()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MobFoxInterstitial$AdListenerPage;->this$0:Lcom/google/appinventor/components/runtime/MobFoxInterstitial;

    const-string/jumbo v1, "No Ad Found"

    const-string/jumbo v2, "No Ad Found"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/MobFoxInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "MobFoxInterstitial"

    const-string/jumbo v1, "No Ad Found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
