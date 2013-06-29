.class public abstract Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.super Landroid/widget/FrameLayout;
.source "ToolsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;,
        Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccentColor:I

.field private mAnimationFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationKiller:Ljava/lang/Runnable;

.field private final mAnimationRunner:Ljava/lang/Runnable;

.field private mAnimationView:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAnimationImage:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field protected mState:I

.field private mStateIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mStopAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    .line 112
    const-string v1, "#E066FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    .line 118
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    .line 120
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    .line 128
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    .line 134
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    .line 140
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 141
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setFocusable(Z)V

    .line 150
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 183
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    .line 184
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    .line 216
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$4;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return p1
.end method

.method static synthetic access$208(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private colorize(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "imageView"

    .prologue
    .line 359
    const v1, -0x55555556

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 361
    .local v0, colorize:Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 362
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "imageView"
    .parameter "bitmap"
    .parameter "colorize"

    .prologue
    .line 349
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    const v0, -0x55555556

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 351
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 352
    return-void
.end method

.method private updateIcon()V
    .locals 5

    .prologue
    .line 246
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    .line 247
    .local v2, icon:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const/4 v0, 0x0

    .line 248
    .local v0, bitmapIcon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 250
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->id:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    iget-boolean v4, v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    invoke-direct {p0, v3, v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 257
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load resource : OutOfMemoryError"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method varargs addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V
    .locals 1
    .parameter "stateId"
    .parameter "stateIcon"
    .parameter "animationIcons"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    if-eqz p3, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    :cond_1
    return-void
.end method

.method public colorize(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 373
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    .line 376
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 377
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 378
    return-void
.end method

.method protected abstract onAction()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onAction()V

    .line 329
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 338
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 226
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    if-eq p1, v0, :cond_0

    .line 227
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    .line 228
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->updateIcon()V

    .line 231
    :cond_0
    return-void
.end method

.method public startAnimate(I)V
    .locals 10
    .parameter "toState"

    .prologue
    const/4 v9, 0x0

    .line 285
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v0, 0x0

    .line 291
    .local v0, animationIcons:[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    .line 292
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animationIcons:[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    check-cast v0, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    .line 294
    .restart local v0       #animationIcons:[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    :cond_2
    if-eqz v0, :cond_0

    .line 295
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 296
    .local v4, res:Landroid/content/res/Resources;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    .line 297
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 298
    aget-object v6, v0, v3

    iget v5, v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->id:I

    .line 299
    .local v5, resId:I
    const/4 v1, 0x0

    .line 301
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    :goto_2
    if-eqz v1, :cond_3

    .line 306
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    new-instance v7, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;

    aget-object v8, v0, v3

    iget-boolean v8, v8, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    invoke-direct {v7, v1, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, e:Ljava/lang/OutOfMemoryError;
    sget-object v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    const-string v7, "Failed to load anim resource : OutOfMemoryError"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 309
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v5           #resId:I
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 310
    iput-boolean v9, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    .line 311
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    const/4 v6, -0x1

    iput v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    .line 314
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stopAnimate(Z)V
    .locals 5
    .parameter "kill"

    .prologue
    const/4 v4, 0x0

    .line 266
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    :goto_0
    return-void

    .line 269
    :cond_0
    if-eqz p1, :cond_2

    .line 270
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 273
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;

    .line 276
    .local v0, frame:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;
    iget-object v2, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 278
    .end local v0           #frame:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 280
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    goto :goto_0
.end method
