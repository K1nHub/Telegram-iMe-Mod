package org.fork.p046ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TemplatesHeaderCell.kt */
/* renamed from: org.fork.ui.view.TemplatesHeaderCell$sortButton$2 */
/* loaded from: classes4.dex */
public final class TemplatesHeaderCell$sortButton$2 extends Lambda implements Function0<ActionBarMenuItem> {
    final /* synthetic */ TemplatesHeaderCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplatesHeaderCell$sortButton$2(TemplatesHeaderCell templatesHeaderCell) {
        super(0);
        this.this$0 = templatesHeaderCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ActionBarMenuItem invoke() {
        ActionBarMenuItem initSortButton;
        initSortButton = this.this$0.initSortButton();
        return initSortButton;
    }
}
