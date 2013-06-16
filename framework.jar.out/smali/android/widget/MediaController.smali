.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final FAST_FORWARD_TIME:I = 0x3a98

.field private static final REWIND_TIME:I = 0x1388

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mHandler:Landroid/os/Handler;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 196
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 391
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 532
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 570
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 647
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 658
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 110
    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 111
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 112
    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 113
    iput-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 196
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 391
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 532
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 570
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 647
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 658
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 124
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 125
    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 126
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindowLayout()V

    .line 127
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Landroid/widget/MediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/MediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/MediaController;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/MediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/MediaController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/MediaController;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/MediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/MediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/widget/MediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/MediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/widget/MediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/MediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/MediaController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 319
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 323
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 327
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_3

    .line 328
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_3
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 556
    :goto_0
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 557
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 252
    const v1, 0x10202ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 253
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 255
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_0
    const v1, 0x10202eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 259
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_1

    .line 262
    iget-object v4, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 266
    :cond_1
    const v1, 0x10202e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 267
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_2

    .line 270
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v4, :cond_8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 275
    :cond_2
    const v1, 0x10202ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 276
    iget-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v1, :cond_3

    .line 277
    iget-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 279
    :cond_3
    const v1, 0x10202e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 280
    iget-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v1, :cond_4

    .line 281
    iget-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 284
    :cond_4
    const v1, 0x10202ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 285
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_6

    .line 286
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 287
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 288
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v1, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 290
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_5
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 293
    :cond_6
    const v1, 0x1020065

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 294
    const v1, 0x10202ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 296
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 298
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 299
    return-void

    :cond_7
    move v1, v3

    .line 262
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 270
    goto/16 :goto_1
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 135
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 136
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 137
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 139
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    .line 140
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 146
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 148
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusable(Z)V

    .line 149
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusableInTouchMode(Z)V

    .line 150
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->setDescendantFocusability(I)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/MediaController;->requestFocus()Z

    .line 152
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 159
    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 160
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 161
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 162
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 163
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 164
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 165
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x820020

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 169
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 170
    return-void
.end method

.method private installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    iget-object v3, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 675
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 679
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 672
    goto :goto_0

    :cond_3
    move v1, v2

    .line 677
    goto :goto_1
.end method

.method private setProgress()I
    .locals 9

    .prologue
    .line 426
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/MediaController;->mDragging:Z

    if-eqz v5, :cond_2

    .line 427
    :cond_0
    const/4 v4, 0x0

    .line 446
    :cond_1
    :goto_0
    return v4

    .line 429
    :cond_2
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 430
    .local v4, position:I
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 431
    .local v0, duration:I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_4

    .line 432
    if-lez v0, :cond_3

    .line 434
    const-wide/16 v5, 0x3e8

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v0

    div-long v2, v5, v7

    .line 435
    .local v2, pos:J
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 437
    .end local v2           #pos:J
    :cond_3
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 438
    .local v1, percent:I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 441
    .end local v1           #percent:I
    :cond_4
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 442
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_5
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 444
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 411
    div-int/lit16 v3, p1, 0x3e8

    .line 413
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 414
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 415
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 417
    .local v0, hours:I
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 418
    if-lez v0, :cond_0

    .line 419
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 421
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateFloatingWindowLayout()V
    .locals 4

    .prologue
    .line 175
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 176
    .local v0, anchorPos:[I
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 178
    iget-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 179
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 180
    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 181
    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 546
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0xbb8

    const/4 v3, 0x1

    .line 463
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 464
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 466
    .local v2, uniqueDown:Z
    :goto_0
    const/16 v4, 0x4f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x55

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-ne v0, v4, :cond_3

    .line 469
    :cond_0
    if-eqz v2, :cond_1

    .line 470
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    .line 471
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    .line 472
    iget-object v4, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_1

    .line 473
    iget-object v4, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 529
    :cond_1
    :goto_1
    return v3

    .line 464
    .end local v2           #uniqueDown:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 477
    .restart local v2       #uniqueDown:Z
    :cond_3
    const/16 v4, 0x7e

    if-ne v0, v4, :cond_4

    .line 478
    if-eqz v2, :cond_1

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_1

    .line 479
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 480
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 481
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1

    .line 484
    :cond_4
    const/16 v4, 0x56

    if-eq v0, v4, :cond_5

    const/16 v4, 0x7f

    if-ne v0, v4, :cond_6

    .line 486
    :cond_5
    if-eqz v2, :cond_1

    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 488
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 489
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1

    .line 492
    :cond_6
    const/16 v4, 0x19

    if-eq v0, v4, :cond_7

    const/16 v4, 0x18

    if-eq v0, v4, :cond_7

    const/16 v4, 0xa4

    if-ne v0, v4, :cond_8

    .line 496
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    .line 497
    :cond_8
    const/4 v4, 0x4

    if-eq v0, v4, :cond_9

    const/16 v4, 0x52

    if-ne v0, v4, :cond_a

    .line 498
    :cond_9
    if-eqz v2, :cond_1

    .line 499
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 502
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x5a

    if-ne v0, v4, :cond_b

    .line 503
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    add-int/lit16 v1, v4, 0x3a98

    .line 504
    .local v1, pos:I
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 505
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 506
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1

    .line 508
    .end local v1           #pos:I
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x59

    if-ne v0, v4, :cond_c

    .line 509
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    add-int/lit16 v1, v4, -0x1388

    .line 510
    .restart local v1       #pos:I
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 511
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 512
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    goto/16 :goto_1

    .line 514
    .end local v1           #pos:I
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x57

    if-ne v0, v4, :cond_d

    .line 515
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    .line 516
    .restart local v1       #pos:I
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 517
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 518
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    goto/16 :goto_1

    .line 520
    .end local v1           #pos:I
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x58

    if-ne v0, v4, :cond_e

    .line 521
    const/4 v1, 0x0

    .line 522
    .restart local v1       #pos:I
    iget-object v4, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v4, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 523
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 524
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    goto/16 :goto_1

    .line 528
    .end local v1           #pos:I
    :cond_e
    invoke-virtual {p0, v5}, Landroid/widget/MediaController;->show(I)V

    .line 529
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_1
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 244
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x109006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 246
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 637
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 638
    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 639
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 643
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 644
    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 645
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 451
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 457
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, -0x1

    .line 218
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 221
    :cond_0
    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 222
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 226
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    .line 232
    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 619
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 620
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 622
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 623
    iget-object v3, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 625
    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 626
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 628
    :cond_4
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 629
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 631
    :cond_5
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    .line 632
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 633
    return-void

    :cond_6
    move v0, v2

    .line 623
    goto :goto_0

    :cond_7
    move v1, v2

    .line 626
    goto :goto_1
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 208
    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 209
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 210
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "next"
    .parameter "prev"

    .prologue
    const/4 v1, 0x0

    .line 682
    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 683
    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mListenersSet:Z

    .line 686
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 687
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 689
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 692
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_1

    .line 693
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 696
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 306
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 307
    return-void
.end method

.method public show(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    const/4 v4, 0x1

    .line 345
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 346
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 347
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 350
    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    .line 351
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    .line 352
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iput-boolean v4, p0, Landroid/widget/MediaController;->mShowing:Z

    .line 355
    :cond_1
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 360
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 364
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 367
    :cond_2
    return-void
.end method
