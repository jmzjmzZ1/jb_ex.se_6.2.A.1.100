.class public Lcom/android/phone/SomcDtmfDialPad;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"


# static fields
.field private static final sDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static sKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackspaceCount:I

.field private final mBackspaceHandler:Landroid/os/Handler;

.field private mBackspacePressed:Z

.field private mCallViewActionListener:Lcom/android/phone/CallView$CallViewActionListener;

.field private final mDialpad:Landroid/widget/LinearLayout;

.field private mDialpadDigits:Lcom/android/phone/SomcEditText;

.field private final mDtmfDelButton:Landroid/widget/ImageButton;

.field private final mDtmfDialer:Landroid/widget/LinearLayout;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field protected mUseQwertyKeyboard:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2a

    const/16 v3, 0x23

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07005a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07005d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07005e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f07005f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070060

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070062

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070063

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f070061

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    .line 74
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 4
    .parameter "context"
    .parameter "view"
    .parameter "useQwertyKeyboard"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    .line 98
    iput v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/android/phone/SomcDtmfDialPad$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcDtmfDialPad$1;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 109
    new-instance v0, Lcom/android/phone/SomcDtmfDialPad$2;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcDtmfDialPad$2;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 122
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcDtmfDialPad constructor..."

    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V

    .line 124
    :cond_0
    iput-object p2, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    .line 125
    iput-boolean p3, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    .line 126
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcEditText;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->initDialpad(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    .line 137
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpad:Landroid/widget/LinearLayout;

    .line 139
    iget-boolean v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 149
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/SomcDtmfDialPad;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcDtmfDialPad;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/SomcDtmfDialPad;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->checkNumber()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/phone/SomcDtmfDialPad;->sKeyCodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SomcDtmfDialPad;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/SomcDtmfDialPad;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/SomcDtmfDialPad;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/phone/SomcDtmfDialPad;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/SomcDtmfDialPad;)Lcom/android/phone/SomcEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    return-object v0
.end method

.method private backspace()V
    .locals 4

    .prologue
    .line 319
    iget v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I

    .line 321
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V

    .line 325
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspaceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/SomcDtmfDialPad$6;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcDtmfDialPad$6;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    return-void
.end method

.method private checkNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/phone/LargeCallView;

    .line 395
    .local v0, callView:Lcom/android/phone/LargeCallView;
    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->getButtonPanel()Lcom/android/phone/SomcInCallButtonPanel;

    move-result-object v1

    .line 396
    .local v1, panel:Lcom/android/phone/SomcInCallButtonPanel;
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v2}, Lcom/android/phone/SomcEditText;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 397
    invoke-virtual {v1}, Lcom/android/phone/SomcInCallButtonPanel;->noNumberInDialpad()V

    .line 398
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 399
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 403
    iput-boolean v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v2}, Lcom/android/phone/SomcEditText;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 406
    invoke-virtual {v1}, Lcom/android/phone/SomcInCallButtonPanel;->numberInDialpad()V

    .line 407
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private enableKeyListeners(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/phone/LargeCallView;

    .line 261
    .local v0, callView:Lcom/android/phone/LargeCallView;
    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->getButtonPanel()Lcom/android/phone/SomcInCallButtonPanel;

    move-result-object v1

    .line 263
    .local v1, panel:Lcom/android/phone/SomcInCallButtonPanel;
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 264
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    const v4, 0x7f070035

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 265
    iget-object v4, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mTouchListener:Landroid/view/View$OnTouchListener;

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 269
    iget-boolean v2, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    if-nez v2, :cond_1

    .line 270
    invoke-direct {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->initButtons(Z)V

    .line 272
    :cond_1
    return-void

    :cond_2
    move-object v2, v3

    .line 263
    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 264
    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 265
    goto :goto_2
.end method

.method private fireAction(ILjava/lang/Object;)V
    .locals 1
    .parameter "action"
    .parameter "information"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mCallViewActionListener:Lcom/android/phone/CallView$CallViewActionListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mCallViewActionListener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-interface {v0, p1, p2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 249
    :cond_0
    return-void
.end method

.method private initButtons(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 275
    new-instance v1, Lcom/android/phone/SomcDtmfDialPad$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcDtmfDialPad$4;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    .line 286
    .local v1, buttonClickListener:Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/phone/SomcDtmfDialPad$5;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcDtmfDialPad$5;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    .line 304
    .local v3, longClickListener:Landroid/view/View$OnLongClickListener;
    sget-object v5, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 305
    .local v4, viewId:I
    iget-object v5, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, button:Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 308
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/phone/SomcDtmfDialPad;->mTouchListener:Landroid/view/View$OnTouchListener;

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 310
    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/android/phone/SomcDtmfDialPad;->mKeyListener:Landroid/view/View$OnKeyListener;

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 311
    if-eqz p1, :cond_4

    move-object v5, v1

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    const v5, 0x7f070061

    if-eq v4, v5, :cond_1

    const v5, 0x7f070062

    if-eq v4, v5, :cond_1

    const v5, 0x7f070063

    if-ne v4, v5, :cond_0

    .line 313
    :cond_1
    if-eqz p1, :cond_5

    move-object v5, v3

    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 308
    goto :goto_1

    :cond_3
    move-object v5, v6

    .line 310
    goto :goto_2

    :cond_4
    move-object v5, v6

    .line 311
    goto :goto_3

    :cond_5
    move-object v5, v6

    .line 313
    goto :goto_4

    .line 316
    .end local v0           #button:Landroid/view/View;
    .end local v4           #viewId:I
    :cond_6
    return-void
.end method

.method private initDialpad(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 152
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, p0}, Lcom/android/phone/SomcEditText;->setSomcDtmfDialPad(Lcom/android/phone/SomcDtmfDialPad;)V

    .line 157
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcEditText;->setLongClickable(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcEditText;->setInputType(I)V

    .line 159
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcEditText;->setFocusable(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcEditText;->setCursorVisible(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcEditText;->setClickable(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcEditText;->setTextDirection(I)V

    .line 164
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    new-instance v1, Lcom/android/phone/SomcDtmfDialPad$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcDtmfDialPad$3;-><init>(Lcom/android/phone/SomcDtmfDialPad;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 451
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 452
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1, p1, v0}, Lcom/android/phone/SomcEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 453
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 355
    const-string v0, "SomcDtmfDialPad"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 182
    .local v0, viewId:I
    sget-object v3, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return v5

    .line 186
    :pswitch_0
    sget-object v3, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcDtmfDialPad;->processDtmf(C)V

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/phone/SomcDtmfDialPad;->stopTone()V

    goto :goto_0

    .line 198
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 200
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 202
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/android/phone/SomcDtmfDialPad;->stopTone()V

    goto :goto_0

    .line 214
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_0

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 217
    :pswitch_4
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 218
    iput-boolean v6, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z

    .line 219
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->backspace()V

    goto :goto_0

    .line 223
    :pswitch_5
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 224
    iput-boolean v5, p0, Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private final processDtmf(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 341
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcDtmfDialPad;->startTone(C)V

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 346
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring dtmf request for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private simulateTouch(Landroid/view/View;Landroid/view/KeyEvent;)V
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    .line 433
    const/4 v8, 0x0

    .line 434
    .local v8, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 444
    :goto_0
    if-eqz v8, :cond_0

    .line 445
    invoke-direct {p0, p1, v8}, Lcom/android/phone/SomcDtmfDialPad;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 446
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 448
    :cond_0
    return-void

    .line 436
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 438
    goto :goto_0

    .line 440
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcDtmfDialPad;->enableKeyListeners(Z)V

    .line 380
    invoke-virtual {p0}, Lcom/android/phone/SomcDtmfDialPad;->stopTone()V

    .line 381
    return-void
.end method

.method public getDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 412
    const/16 v3, 0x17

    if-eq p2, v3, :cond_0

    const/16 v3, 0x42

    if-ne p2, v3, :cond_2

    .line 413
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/phone/SomcDtmfDialPad;->simulateTouch(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 429
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 415
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getNumber()C

    move-result v0

    .line 416
    .local v0, c:C
    sget-object v3, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    sget-object v3, Lcom/android/phone/SomcDtmfDialPad;->sDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 418
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 419
    iget-object v4, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 420
    invoke-direct {p0, p1, p3}, Lcom/android/phone/SomcDtmfDialPad;->simulateTouch(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 421
    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->requestFocus()Z

    goto :goto_0

    .line 425
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Character;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 426
    iget-object v3, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDelButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v3, p3}, Lcom/android/phone/SomcDtmfDialPad;->simulateTouch(Landroid/view/View;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDtmfDialer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->checkNumber()V

    .line 365
    iget-boolean v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mUseQwertyKeyboard:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0141

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/SomcDtmfDialPad;->enableKeyListeners(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0}, Lcom/android/phone/SomcEditText;->requestFocus()Z

    .line 373
    return-void
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad;->mCallViewActionListener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 253
    return-void
.end method

.method public setDigits(Ljava/lang/String;)V
    .locals 1
    .parameter "digits"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcEditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 389
    invoke-direct {p0}, Lcom/android/phone/SomcDtmfDialPad;->checkNumber()V

    .line 390
    return-void
.end method

.method public startTone(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 235
    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->fireAction(ILjava/lang/Object;)V

    .line 236
    return-void
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 242
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->fireAction(ILjava/lang/Object;)V

    .line 243
    return-void
.end method
