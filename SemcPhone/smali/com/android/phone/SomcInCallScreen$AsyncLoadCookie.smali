.class Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncLoadCookie"
.end annotation


# instance fields
.field public final call:Lcom/android/internal/telephony/Call;

.field public final callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "imageView"
    .parameter "callerInfo"
    .parameter "call"

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 345
    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 346
    iput-object p3, p0, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 347
    return-void
.end method
