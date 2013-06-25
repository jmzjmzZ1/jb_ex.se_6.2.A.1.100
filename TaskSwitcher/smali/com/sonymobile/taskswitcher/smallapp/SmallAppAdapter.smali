.class public Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmallAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$1;,
        Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;->mAppList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, holder:Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f030002

    invoke-virtual {v3, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;

    .end local v1           #holder:Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$1;)V

    .line 68
    .restart local v1       #holder:Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;
    const v3, 0x7f0d0006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    .line 69
    const v3, 0x7f0d0007

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f0d0008

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;->mInUse:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 78
    .local v0, appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    iget-object v3, v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v3, v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->isInUse()Z

    move-result v2

    .line 83
    .local v2, inUse:Z
    iget-object v6, v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    if-nez v2, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 84
    iget-object v6, v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;->mInUse:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    if-nez v2, :cond_3

    :goto_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    return-object p2

    .line 74
    .end local v0           #appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    .end local v2           #inUse:Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;
    check-cast v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/sonymobile/taskswitcher/smallapp/SmallAppAdapter$ViewHolder;
    goto :goto_0

    .restart local v0       #appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    .restart local v2       #inUse:Z
    :cond_1
    move v3, v5

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/16 v3, 0x8

    goto :goto_2

    :cond_3
    move v4, v5

    .line 85
    goto :goto_3
.end method
