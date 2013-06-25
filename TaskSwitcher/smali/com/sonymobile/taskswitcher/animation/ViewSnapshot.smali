.class public Lcom/sonymobile/taskswitcher/animation/ViewSnapshot;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/taskswitcher/animation/ViewSnapshot$ViewRenderer;
    }
.end annotation


# static fields
.field private static mSpecialRenderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonymobile/taskswitcher/animation/ViewSnapshot$ViewRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/taskswitcher/animation/ViewSnapshot;->mSpecialRenderers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "view"

    .prologue
    .line 48
    sget-object v2, Lcom/sonymobile/taskswitcher/animation/ViewSnapshot;->mSpecialRenderers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/taskswitcher/animation/ViewSnapshot$ViewRenderer;

    .line 49
    .local v1, renderer:Lcom/sonymobile/taskswitcher/animation/ViewSnapshot$ViewRenderer;
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1, p0}, Lcom/sonymobile/taskswitcher/animation/ViewSnapshot$ViewRenderer;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static registerRenderer(Ljava/lang/Class;Lcom/sonymobile/taskswitcher/animation/ViewSnapshot$ViewRenderer;)V
    .locals 1
    .parameter
    .parameter "viewRenderer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonymobile/taskswitcher/animation/ViewSnapshot$ViewRenderer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sonymobile/taskswitcher/animation/ViewSnapshot;->mSpecialRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public static unregisterRenderer(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sonymobile/taskswitcher/animation/ViewSnapshot;->mSpecialRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
