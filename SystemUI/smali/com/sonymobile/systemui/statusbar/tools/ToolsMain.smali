.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;
.super Ljava/lang/Object;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;
    }
.end annotation


# instance fields
.field private mButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final mButtons:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private final mServices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsService;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 66
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Landroid/widget/LinearLayout;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    .line 71
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showNextActivity(Landroid/content/Context;)V

    return-void
.end method

.method private addViewWithDivider(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "params"

    .prologue
    .line 290
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 292
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 296
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, divider:Landroid/widget/ImageView;
    const v2, 0x7f0200da

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 298
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .end local v0           #divider:Landroid/widget/ImageView;
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    return-void
.end method

.method private colorize(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 307
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 308
    .local v1, toolButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    invoke-virtual {v1, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(I)V

    goto :goto_0

    .line 310
    .end local v1           #toolButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    :cond_0
    return-void
.end method

.method private createBluetooth()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 187
    new-instance v5, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;-><init>(Landroid/content/Context;)V

    .line 188
    .local v5, service:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;

    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v6, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;)V

    .line 201
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0200c6

    invoke-direct {v3, v6, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 202
    .local v3, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0200c4

    invoke-direct {v1, v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 203
    .local v1, iconAnim1:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0200c5

    invoke-direct {v2, v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 204
    .local v2, iconAnim2:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0200c7

    invoke-direct {v4, v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 205
    .local v4, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-array v6, v11, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v2, v6, v8

    aput-object v1, v6, v7

    aput-object v4, v6, v9

    aput-object v3, v6, v10

    invoke-virtual {v0, v7, v3, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 206
    new-array v6, v11, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v3, v6, v8

    aput-object v4, v6, v7

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    invoke-virtual {v0, v9, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 207
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->addViewWithDivider(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 208
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v6, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 212
    return-void
.end method

.method private createDataTraffic()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, service:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V

    .line 175
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v3, 0x7f0200c8

    invoke-direct {v2, v3, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v3, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v6, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 177
    const/4 v2, 0x2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0200c9

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 179
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->addViewWithDivider(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 181
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 183
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method private createSettingsShortcut()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;)V

    .line 118
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v2, 0x7f0200cb

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v2, v3, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v4, v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->addViewWithDivider(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 121
    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 122
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method private createSound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/SoundService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, service:Lcom/sonymobile/systemui/statusbar/tools/SoundService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/SoundService;)V

    .line 144
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v3, 0x7f0200cc

    invoke-direct {v2, v3, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v3, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v6, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 146
    const/4 v2, 0x2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0200cd

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 148
    const/4 v2, 0x3

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0200cf

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 150
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->addViewWithDivider(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 152
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 154
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private createWifi()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 215
    new-instance v6, Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;-><init>(Landroid/content/Context;)V

    .line 216
    .local v6, service:Lcom/sonymobile/systemui/statusbar/tools/WifiService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$5;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v7, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$5;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/WifiService;)V

    .line 229
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0200d3

    invoke-direct {v4, v7, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 230
    .local v4, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0200d0

    invoke-direct {v1, v7, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 231
    .local v1, iconAnim1:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0200d1

    invoke-direct {v2, v7, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 232
    .local v2, iconAnim2:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0200d2

    invoke-direct {v3, v7, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 233
    .local v3, iconAnim3:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v5, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0200d4

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 234
    .local v5, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v5, v7, v9

    aput-object v3, v7, v8

    aput-object v2, v7, v10

    aput-object v1, v7, v11

    aput-object v4, v7, v12

    invoke-virtual {v0, v8, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 236
    new-array v7, v12, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v1, v7, v9

    aput-object v2, v7, v8

    aput-object v3, v7, v10

    aput-object v5, v7, v11

    invoke-virtual {v0, v10, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 237
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->addViewWithDivider(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 238
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v7, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v7, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 242
    return-void
.end method

.method private static final showNextActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 274
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 275
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 281
    .local v0, manager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 284
    :cond_0
    return-void

    .line 276
    .end local v0           #manager:Landroid/app/StatusBarManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startServices()V
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;

    .line 101
    .local v1, service:Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->start()V

    goto :goto_0

    .line 103
    .end local v1           #service:Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfiguration"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 317
    .local v0, configChanges:I
    const/high16 v1, -0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize(I)V

    .line 320
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSound()V

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createBluetooth()V

    .line 85
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createWifi()V

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createDataTraffic()V

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSettingsShortcut()V

    .line 94
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize(I)V

    .line 96
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->startServices()V

    .line 97
    return-void
.end method
