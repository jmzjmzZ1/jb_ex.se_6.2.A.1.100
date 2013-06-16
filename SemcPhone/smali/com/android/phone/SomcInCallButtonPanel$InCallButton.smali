.class Lcom/android/phone/SomcInCallButtonPanel$InCallButton;
.super Ljava/lang/Object;
.source "SomcInCallButtonPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallButtonPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InCallButton"
.end annotation


# instance fields
.field private mBackground:Landroid/widget/LinearLayout;

.field private mBackgrounds:[I

.field private mButton:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mIndicator:Landroid/widget/ImageView;

.field private mPressed:Z

.field private mValues:[I


# direct methods
.method public constructor <init>(Landroid/view/View;[I[I)V
    .locals 3
    .parameter "view"
    .parameter "backgrounds"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    .line 527
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    .line 528
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIndicator:Landroid/widget/ImageView;

    .line 529
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackground:Landroid/widget/LinearLayout;

    .line 530
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    .line 531
    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackgrounds:[I

    .line 532
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z

    .line 541
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    .line 542
    iput-object p2, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackgrounds:[I

    .line 543
    invoke-virtual {p0, p3}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 545
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackground:Landroid/widget/LinearLayout;

    .line 546
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackgrounds:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 548
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$1;-><init>(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 587
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;-><init>(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 599
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressIcon(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mPressed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setPressed()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setFocused()V

    return-void
.end method

.method private setFocused()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackgrounds:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 644
    return-void
.end method

.method private setIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 647
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setIcon(I)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 660
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 661
    return-void
.end method

.method private setNormal()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackgrounds:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 636
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon()V

    .line 637
    return-void
.end method

.method private setPressIcon(I)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 656
    return-void
.end method

.method private setPressed()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mBackgrounds:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 627
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    :cond_0
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method public isButtonEnabled()Z
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 727
    const/4 v0, 0x1

    .line 729
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 669
    return-void
.end method

.method public setButtonEnabled(I)V
    .locals 4
    .parameter "enabledState"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x3

    .line 710
    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 711
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 712
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    aput v2, v1, v3

    .line 716
    :goto_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 717
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 718
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon()V

    .line 719
    return-void

    .line 710
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 714
    .restart local v0       #enabled:Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x4

    aput v2, v1, v3

    goto :goto_1
.end method

.method public setButtonValues([I)V
    .locals 2
    .parameter "values"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    .line 603
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    .line 604
    invoke-direct {p0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIcon()V

    .line 606
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setAction(I)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonEnabled(I)V

    .line 609
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIndicator:Landroid/widget/ImageView;

    .line 610
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 611
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIndicatorVisible(Z)V

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setIndicatorVisible(Z)V

    goto :goto_0
.end method

.method public setIndicatorOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    .line 685
    if-eqz p1, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 687
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setIndicatorVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    return-void

    .line 702
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 735
    return-void
.end method

.method public updateButton()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->mValues:[I

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setButtonValues([I)V

    .line 623
    return-void
.end method
