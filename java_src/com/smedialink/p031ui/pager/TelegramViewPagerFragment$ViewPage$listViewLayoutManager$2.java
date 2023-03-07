package com.smedialink.p031ui.pager;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: TelegramViewPagerFragment.kt */
/* renamed from: com.smedialink.ui.pager.TelegramViewPagerFragment$ViewPage$listViewLayoutManager$2 */
/* loaded from: classes3.dex */
final class TelegramViewPagerFragment$ViewPage$listViewLayoutManager$2 extends Lambda implements Function0<LinearLayoutManager> {
    final /* synthetic */ Context $context;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TelegramViewPagerFragment$ViewPage$listViewLayoutManager$2(Context context) {
        super(0);
        this.$context = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final LinearLayoutManager invoke() {
        return new LinearLayoutManager(this.$context, 1, false);
    }
}
