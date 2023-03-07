package org.fork.p046ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentPreviewMenu.kt */
/* renamed from: org.fork.ui.view.FragmentPreviewMenu$closeItem$2 */
/* loaded from: classes4.dex */
public final class FragmentPreviewMenu$closeItem$2 extends Lambda implements Function0<ActionBarMenuSubItem> {
    final /* synthetic */ FragmentPreviewMenu this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentPreviewMenu$closeItem$2(FragmentPreviewMenu fragmentPreviewMenu) {
        super(0);
        this.this$0 = fragmentPreviewMenu;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ActionBarMenuSubItem invoke() {
        ActionBarMenuSubItem initCloseItem;
        initCloseItem = this.this$0.initCloseItem();
        return initCloseItem;
    }
}
