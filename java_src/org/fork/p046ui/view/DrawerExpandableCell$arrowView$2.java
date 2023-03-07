package org.fork.p046ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawerExpandableCell.kt */
/* renamed from: org.fork.ui.view.DrawerExpandableCell$arrowView$2 */
/* loaded from: classes4.dex */
public final class DrawerExpandableCell$arrowView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ DrawerExpandableCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerExpandableCell$arrowView$2(DrawerExpandableCell drawerExpandableCell) {
        super(0);
        this.this$0 = drawerExpandableCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initArrowView;
        initArrowView = this.this$0.initArrowView();
        return initArrowView;
    }
}
