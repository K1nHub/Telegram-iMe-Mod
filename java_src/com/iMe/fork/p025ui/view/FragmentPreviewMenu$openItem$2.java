package com.iMe.fork.p025ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentPreviewMenu.kt */
/* renamed from: com.iMe.fork.ui.view.FragmentPreviewMenu$openItem$2 */
/* loaded from: classes3.dex */
public final class FragmentPreviewMenu$openItem$2 extends Lambda implements Function0<ActionBarMenuSubItem> {
    final /* synthetic */ FragmentPreviewMenu this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentPreviewMenu$openItem$2(FragmentPreviewMenu fragmentPreviewMenu) {
        super(0);
        this.this$0 = fragmentPreviewMenu;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ActionBarMenuSubItem invoke() {
        ActionBarMenuSubItem initOpenItem;
        initOpenItem = this.this$0.initOpenItem();
        return initOpenItem;
    }
}
