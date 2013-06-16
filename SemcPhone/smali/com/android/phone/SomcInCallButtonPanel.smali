.class public Lcom/android/phone/SomcInCallButtonPanel;
.super Ljava/lang/Object;
.source "SomcInCallButtonPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcInCallButtonPanel$InCallButton;
    }
.end annotation


# static fields
.field private static final ADD_CALL_BUTTON:[I

.field private static final BUTTON_BG:[I

.field private static final DIALPAD_BUTTON_CLOSE:[I

.field private static final DIALPAD_BUTTON_OPEN:[I

.field private static final MAKE_CALL_BUTTON:[I

.field private static final MUTE_BUTTON:[I

.field private static final ROUTE_SOUND_BUTTON:[I

.field private static final SAVE_NUMBER_BUTTON:[I

.field private static sIgnoreNextUpTouchEvent:Z


# instance fields
.field private mBluetoothAvailible:Z

.field private mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

.field private mCallView:Lcom/android/phone/CallView;

.field private mContext:Landroid/content/Context;

.field private mDtmlDialpadOpen:Z

.field private mIsEmergencyCall:Z

.field private mIsLandscape:Z

.field private mListener:Lcom/android/phone/CallView$CallViewActionListener;

.field private mPaddingLeft:I

.field private mUseQwertyKeyboard:Z

.field private mView:Landroid/widget/RelativeLayout;

.field private micMuted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->BUTTON_BG:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_OPEN:[I

    .line 121
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_CLOSE:[I

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BUTTON:[I

    .line 143
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->ADD_CALL_BUTTON:[I

    .line 165
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MAKE_CALL_BUTTON:[I

    .line 176
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/phone/SomcInCallButtonPanel;->SAVE_NUMBER_BUTTON:[I

    return-void

    .line 76
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
    .end array-data

    .line 110
    :array_1
    .array-data 0x4
        0x39t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0xbt 0x7ft
    .end array-data

    .line 121
    :array_2
    .array-data 0x4
        0x40t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0xbt 0x7ft
    .end array-data

    .line 132
    :array_3
    .array-data 0x4
        0x49t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0xbt 0x7ft
    .end array-data

    .line 143
    :array_4
    .array-data 0x4
        0x46t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9at 0x0t 0xbt 0x7ft
    .end array-data

    .line 154
    :array_5
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0xbt 0x7ft
    .end array-data

    .line 165
    :array_6
    .array-data 0x4
        0x3dt 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x98t 0x0t 0xbt 0x7ft
    .end array-data

    .line 176
    :array_7
    .array-data 0x4
        0x3at 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9et 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/phone/CallView;Landroid/content/Context;ZZ)V
    .locals 8
    .parameter "rootView"
    .parameter "callView"
    .parameter "context"
    .parameter "useQwertyKeyboard"
    .parameter "isLandscape"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    .line 41
    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 48
    iput-boolean v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->micMuted:Z

    .line 49
    iput-boolean v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->mBluetoothAvailible:Z

    .line 50
    iput-boolean v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsEmergencyCall:Z

    .line 61
    iput-boolean v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    .line 62
    iput-boolean v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    .line 63
    iput-boolean v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->mDtmlDialpadOpen:Z

    .line 64
    iput v7, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    .line 67
    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 68
    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 69
    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 70
    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 363
    const-string v4, "Creating SomcInCallButtonPanel"

    invoke-static {v4}, Lcom/android/phone/SomcInCallButtonPanel;->log(Ljava/lang/String;)V

    .line 364
    const v4, 0x7f0700a2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    .line 365
    iput-object p2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    .line 366
    iput-object p3, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    .line 367
    iput-boolean p4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    .line 368
    iput-boolean p5, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    .line 371
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v5, 0x7f070031

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, btn1:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v5, 0x7f070032

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, btn2:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v5, 0x7f070033

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 378
    .local v2, btn3:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const v5, 0x7f070034

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 381
    .local v3, btn4:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    new-instance v4, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v5, Lcom/android/phone/SomcInCallButtonPanel;->BUTTON_BG:[I

    sget-object v6, Lcom/android/phone/SomcInCallButtonPanel;->ADD_CALL_BUTTON:[I

    invoke-direct {v4, v0, v5, v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/view/View;[I[I)V

    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 385
    new-instance v4, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v5, Lcom/android/phone/SomcInCallButtonPanel;->BUTTON_BG:[I

    sget-object v6, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BUTTON:[I

    invoke-direct {v4, v1, v5, v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/view/View;[I[I)V

    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 386
    new-instance v4, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v5, Lcom/android/phone/SomcInCallButtonPanel;->BUTTON_BG:[I

    sget-object v6, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    invoke-direct {v4, v2, v5, v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/view/View;[I[I)V

    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 387
    new-instance v4, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v5, Lcom/android/phone/SomcInCallButtonPanel;->BUTTON_BG:[I

    sget-object v6, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_OPEN:[I

    invoke-direct {v4, v3, v5, v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/view/View;[I[I)V

    iput-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    .line 389
    iget-boolean v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    if-eqz v4, :cond_0

    .line 390
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    .line 392
    iget-boolean v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mDtmlDialpadOpen:Z

    if-eqz v4, :cond_1

    .line 393
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 394
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 401
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    return-void

    .line 396
    :cond_1
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 397
    iget-object v4, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    invoke-virtual {v4, v5, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/phone/SomcInCallButtonPanel;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 739
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    .line 740
    const-string v0, "SomcInCallButtonPanel"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    return-void
.end method


# virtual methods
.method public dtmlDialpadOpen(Z)V
    .locals 5
    .parameter "open"

    .prologue
    const/16 v4, 0x50

    const/4 v3, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mDtmlDialpadOpen:Z

    .line 223
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->MAKE_CALL_BUTTON:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 226
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->SAVE_NUMBER_BUTTON:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 228
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0132

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_CLOSE:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 231
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0133

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 237
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 242
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setSoundRoutingOptionsVisibility(I)V

    .line 264
    :goto_1
    return-void

    .line 238
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 240
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->ADD_CALL_BUTTON:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 245
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b012b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->MUTE_BUTTON:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 248
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0131

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v2, Lcom/android/phone/SomcInCallButtonPanel;->DIALPAD_BUTTON_OPEN:[I

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 251
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0134

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 255
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mUseQwertyKeyboard:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsLandscape:Z

    if-eqz v1, :cond_4

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 257
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mPaddingLeft:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 261
    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->micMuted:Z

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setMicMuted(Z)V

    goto :goto_1
.end method

.method public hide(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 428
    if-eqz p1, :cond_1

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, hideButtonPanelAnim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    new-instance v1, Lcom/android/phone/SomcInCallButtonPanel$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallButtonPanel$1;-><init>(Lcom/android/phone/SomcInCallButtonPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 444
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    .end local v0           #hideButtonPanelAnim:Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public noNumberInDialpad()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 207
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 209
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MAKE_CALL_BUTTON:[I

    aput v2, v0, v3

    .line 213
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->SAVE_NUMBER_BUTTON:[I

    aput v2, v0, v3

    goto :goto_0
.end method

.method public numberInDialpad()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x3

    .line 192
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->MAKE_CALL_BUTTON:[I

    aput v2, v0, v3

    .line 198
    sget-object v0, Lcom/android/phone/SomcInCallButtonPanel;->SAVE_NUMBER_BUTTON:[I

    aput v2, v0, v3

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 514
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 515
    return-void

    .line 471
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    goto :goto_0

    .line 479
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mBluetoothAvailible:Z

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x1e

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setSoundRoutingOptionsVisibility(I)V

    goto :goto_0

    .line 489
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x16

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 493
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 497
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 501
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->isButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 507
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->isButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/SomcInCallButtonPanel;->sIgnoreNextUpTouchEvent:Z

    .line 457
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$400(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 458
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$400(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 459
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$400(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 460
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$400(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 461
    return-void
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mListener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 410
    return-void
.end method

.method public setInOutgoingCallState(Z)V
    .locals 3
    .parameter "outgoingCall"

    .prologue
    .line 348
    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->ADD_CALL_BUTTON:[I

    const/4 v2, 0x6

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    aput v0, v1, v2

    .line 349
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->updateButton()V

    .line 352
    :cond_0
    return-void

    .line 348
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setIsEmergencyCall(Z)V
    .locals 0
    .parameter "isEmergency"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsEmergencyCall:Z

    .line 344
    return-void
.end method

.method public setMicMuted(Z)V
    .locals 6
    .parameter "muted"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x6a

    const/16 v3, 0x69

    .line 271
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mIsEmergencyCall:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v5}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIndicatorOn(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setAction(I)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 289
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallButtonPanel;->micMuted:Z

    .line 290
    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 276
    :cond_3
    if-eqz p1, :cond_4

    .line 277
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIndicatorOn(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setAction(I)V

    .line 287
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    goto :goto_0

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v5}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIndicatorOn(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setAction(I)V

    goto :goto_1
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton1:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 520
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton3:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 521
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton4:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 522
    return-void
.end method

.method public setRouteSoundButtonState(ZZZ)V
    .locals 7
    .parameter "speakerOn"
    .parameter "bluetoothOn"
    .parameter "bluetoothConnected"

    .prologue
    const v6, 0x7f020049

    const v5, 0x7f02002f

    const v4, 0x7f02002d

    const v2, 0x7f02002b

    const/4 v3, 0x1

    .line 304
    iput-boolean p3, p0, Lcom/android/phone/SomcInCallButtonPanel;->mBluetoothAvailible:Z

    .line 305
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    sget-object v1, Lcom/android/phone/SomcInCallButtonPanel;->ROUTE_SOUND_BUTTON:[I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 307
    if-nez p3, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon(I)V
    invoke-static {v0, v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$100(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V

    .line 309
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressIcon(I)V
    invoke-static {v0, v6}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V

    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIndicatorOn(Z)V

    .line 335
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIndicatorOn(Z)V

    goto :goto_0

    .line 320
    :cond_1
    if-eqz p2, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon(I)V
    invoke-static {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$100(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V

    .line 322
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressIcon(I)V
    invoke-static {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #getter for: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIndicatorOn(Z)V

    goto :goto_0

    .line 323
    :cond_2
    if-eqz p1, :cond_3

    .line 324
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon(I)V
    invoke-static {v0, v5}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$100(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V

    .line 325
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressIcon(I)V
    invoke-static {v0, v5}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V

    goto :goto_1

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon(I)V
    invoke-static {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$100(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V

    .line 328
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mButton2:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressIcon(I)V
    invoke-static {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V

    goto :goto_1
.end method

.method public show(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 420
    return-void
.end method
