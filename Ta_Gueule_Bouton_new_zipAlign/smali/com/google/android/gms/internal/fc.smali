.class public final Lcom/google/android/gms/internal/fc;
.super Lcom/google/android/gms/internal/fa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ey;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fa;-><init>(Lcom/google/android/gms/internal/ey;)V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "customViewCallback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fc;->a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
