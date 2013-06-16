.class public final Lcom/android/phone/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallBarringEditPreference:[I

.field public static final CallForwardEditPreference:[I

.field public static final ConfirmPlaceCallPreference:[I

.field public static final EditPhoneNumberPreference:[I

.field public static final SomcContactTextView:[I

.field public static final SomcSlidingDrawer:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 4519
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010004

    aput v2, v0, v1

    sput-object v0, Lcom/android/phone/R$styleable;->CallBarringEditPreference:[I

    .line 4555
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    .line 4608
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/R$styleable;->ConfirmPlaceCallPreference:[I

    .line 4675
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    .line 4759
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/phone/R$styleable;->SomcContactTextView:[I

    .line 4840
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/phone/R$styleable;->SomcSlidingDrawer:[I

    return-void

    .line 4555
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 4608
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 4675
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 4759
    :array_3
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data

    .line 4840
    :array_4
    .array-data 0x4
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
