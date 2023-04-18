package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.CounterView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AvatarDrawableCell.kt */
/* renamed from: com.iMe.fork.ui.view.AvatarDrawableCell$counterView$2 */
/* loaded from: classes3.dex */
public final class AvatarDrawableCell$counterView$2 extends Lambda implements Function0<CounterView> {
    final /* synthetic */ AvatarDrawableCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarDrawableCell$counterView$2(AvatarDrawableCell avatarDrawableCell) {
        super(0);
        this.this$0 = avatarDrawableCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final CounterView invoke() {
        CounterView initCounterView;
        initCounterView = this.this$0.initCounterView();
        return initCounterView;
    }
}
