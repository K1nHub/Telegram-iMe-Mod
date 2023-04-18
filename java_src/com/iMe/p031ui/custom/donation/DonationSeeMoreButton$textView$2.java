package com.iMe.p031ui.custom.donation;

import androidx.appcompat.widget.AppCompatTextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DonationSeeMoreButton.kt */
/* renamed from: com.iMe.ui.custom.donation.DonationSeeMoreButton$textView$2 */
/* loaded from: classes3.dex */
public final class DonationSeeMoreButton$textView$2 extends Lambda implements Function0<AppCompatTextView> {
    final /* synthetic */ DonationSeeMoreButton this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DonationSeeMoreButton$textView$2(DonationSeeMoreButton donationSeeMoreButton) {
        super(0);
        this.this$0 = donationSeeMoreButton;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final AppCompatTextView invoke() {
        AppCompatTextView initTextView;
        initTextView = this.this$0.initTextView();
        return initTextView;
    }
}
