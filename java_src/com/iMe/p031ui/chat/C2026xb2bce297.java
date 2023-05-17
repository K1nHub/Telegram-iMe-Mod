package com.iMe.p031ui.chat;

import com.iMe.common.TelegramConstants;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.chat.ChatPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2026xb2bce297 extends Lambda implements Function1<DomainRxEvents.DonationAddressUpdated, Unit> {
    final /* synthetic */ ChatPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2026xb2bce297(ChatPresenter chatPresenter) {
        super(1);
        this.this$0 = chatPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.DonationAddressUpdated donationAddressUpdated) {
        m1334invoke(donationAddressUpdated);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1334invoke(DomainRxEvents.DonationAddressUpdated it) {
        TLRPC$Chat tLRPC$Chat;
        TLRPC$Chat tLRPC$Chat2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.DonationAddressUpdated donationAddressUpdated = it;
        tLRPC$Chat = this.this$0.chat;
        boolean z = false;
        if (tLRPC$Chat != null && donationAddressUpdated.getChatId() == tLRPC$Chat.f1433id) {
            z = true;
        }
        if (z) {
            ChatPresenter chatPresenter = this.this$0;
            TelegramConstants telegramConstants = TelegramConstants.INSTANCE;
            tLRPC$Chat2 = chatPresenter.chat;
            chatPresenter.checkIsDonationEnabled(telegramConstants.prepareChatIdForBotAPI(tLRPC$Chat2.f1433id));
        }
    }
}
