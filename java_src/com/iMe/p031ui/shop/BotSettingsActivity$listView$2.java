package com.iMe.p031ui.shop;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotSettingsActivity.kt */
/* renamed from: com.iMe.ui.shop.BotSettingsActivity$listView$2 */
/* loaded from: classes3.dex */
public final class BotSettingsActivity$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ BotSettingsActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotSettingsActivity$listView$2(BotSettingsActivity botSettingsActivity) {
        super(0);
        this.this$0 = botSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
