package com.iMe.fork.p024ui.fragment;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SettingsToolsCategoryActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.SettingsToolsCategoryActivity$listView$2 */
/* loaded from: classes3.dex */
public final class SettingsToolsCategoryActivity$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ SettingsToolsCategoryActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsToolsCategoryActivity$listView$2(SettingsToolsCategoryActivity settingsToolsCategoryActivity) {
        super(0);
        this.this$0 = settingsToolsCategoryActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
