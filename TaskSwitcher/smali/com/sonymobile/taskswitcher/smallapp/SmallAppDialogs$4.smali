.class final Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$4;
.super Ljava/lang/Object;
.source "SmallAppDialogs.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->showAddDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 224
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    instance-of v1, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 225
    check-cast v0, Landroid/widget/ImageView;

    .line 226
    .local v0, icon:Landroid/widget/ImageView;
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    const/4 v1, 0x1

    .line 229
    .end local v0           #icon:Landroid/widget/ImageView;
    :goto_0
    return v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
