package com.iMe.p032ui.shop;

import com.iMe.bots.domain.model.BotLanguage;
import com.iMe.bots.domain.model.ShopItem;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotInfoActivity.kt */
/* renamed from: com.iMe.ui.shop.BotInfoActivity$observeBotAnalog$1 */
/* loaded from: classes3.dex */
public final class BotInfoActivity$observeBotAnalog$1 extends Lambda implements Function1<List<? extends ShopItem>, Unit> {
    final /* synthetic */ ShopItem $currentBot;
    final /* synthetic */ BotInfoActivity this$0;

    /* compiled from: BotInfoActivity.kt */
    /* renamed from: com.iMe.ui.shop.BotInfoActivity$observeBotAnalog$1$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BotLanguage.values().length];
            try {
                iArr[BotLanguage.RU.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BotLanguage.EN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotInfoActivity$observeBotAnalog$1(BotInfoActivity botInfoActivity, ShopItem shopItem) {
        super(1);
        this.this$0 = botInfoActivity;
        this.$currentBot = shopItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends ShopItem> list) {
        invoke2((List<ShopItem>) list);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006f, code lost:
        r0.botAnalog = r2;
        r13 = r12.this$0.botAnalog;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
        if (r13 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007c, code lost:
        r0 = r12.this$0.botAnalogLanguage;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0082, code lost:
        if (r0 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
        r13 = com.iMe.p032ui.shop.BotInfoActivity$observeBotAnalog$1.WhenMappings.$EnumSwitchMapping$0[r13.getLanguage().ordinal()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
        if (r13 == 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0093, code lost:
        if (r13 != 2) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
        r13 = org.telegram.messenger.LocaleController.getInternalString(org.telegram.messenger.C3316R.string.neurobots_store_bot_info_supported_language_en);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a1, code lost:
        throw new kotlin.NoWhenBranchMatchedException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a2, code lost:
        r13 = org.telegram.messenger.LocaleController.getInternalString(org.telegram.messenger.C3316R.string.neurobots_store_bot_info_supported_language_ru);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a8, code lost:
        r0.setText(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ab, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
        return;
     */
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void invoke2(java.util.List<com.iMe.bots.domain.model.ShopItem> r13) {
        /*
            r12 = this;
            com.iMe.ui.shop.BotInfoActivity r0 = r12.this$0
            java.lang.String r1 = "items"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r1)
            com.iMe.bots.domain.model.ShopItem r1 = r12.$currentBot
            int r2 = r13.size()
            java.util.ListIterator r13 = r13.listIterator(r2)
        L11:
            boolean r2 = r13.hasPrevious()
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L6e
            java.lang.Object r2 = r13.previous()
            r5 = r2
            com.iMe.bots.domain.model.ShopItem r5 = (com.iMe.bots.domain.model.ShopItem) r5
            com.iMe.bots.domain.model.BotLanguage r6 = r1.getLanguage()
            int[] r7 = com.iMe.p032ui.shop.BotInfoActivity$observeBotAnalog$1.WhenMappings.$EnumSwitchMapping$0
            int r6 = r6.ordinal()
            r6 = r7[r6]
            if (r6 == r4) goto L4e
            if (r6 != r3) goto L48
            java.lang.String r5 = r5.getBotId()
            java.lang.String r6 = r1.getBotId()
            r9 = 0
            r10 = 4
            r11 = 0
            java.lang.String r7 = "_eng"
            java.lang.String r8 = ""
            java.lang.String r6 = kotlin.text.StringsKt.replace$default(r6, r7, r8, r9, r10, r11)
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            goto L6b
        L48:
            kotlin.NoWhenBranchMatchedException r13 = new kotlin.NoWhenBranchMatchedException
            r13.<init>()
            throw r13
        L4e:
            java.lang.String r5 = r5.getBotId()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = r1.getBotId()
            r6.append(r7)
            java.lang.String r7 = "_eng"
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
        L6b:
            if (r5 == 0) goto L11
            goto L6f
        L6e:
            r2 = 0
        L6f:
            com.iMe.bots.domain.model.ShopItem r2 = (com.iMe.bots.domain.model.ShopItem) r2
            com.iMe.p032ui.shop.BotInfoActivity.access$setBotAnalog$p(r0, r2)
            com.iMe.ui.shop.BotInfoActivity r13 = r12.this$0
            com.iMe.bots.domain.model.ShopItem r13 = com.iMe.p032ui.shop.BotInfoActivity.access$getBotAnalog$p(r13)
            if (r13 == 0) goto Lab
            com.iMe.ui.shop.BotInfoActivity r0 = r12.this$0
            android.widget.TextView r0 = com.iMe.p032ui.shop.BotInfoActivity.access$getBotAnalogLanguage$p(r0)
            if (r0 != 0) goto L85
            goto Lab
        L85:
            com.iMe.bots.domain.model.BotLanguage r13 = r13.getLanguage()
            int[] r1 = com.iMe.p032ui.shop.BotInfoActivity$observeBotAnalog$1.WhenMappings.$EnumSwitchMapping$0
            int r13 = r13.ordinal()
            r13 = r1[r13]
            if (r13 == r4) goto La2
            if (r13 != r3) goto L9c
            int r13 = org.telegram.messenger.C3316R.string.neurobots_store_bot_info_supported_language_en
            java.lang.String r13 = org.telegram.messenger.LocaleController.getInternalString(r13)
            goto La8
        L9c:
            kotlin.NoWhenBranchMatchedException r13 = new kotlin.NoWhenBranchMatchedException
            r13.<init>()
            throw r13
        La2:
            int r13 = org.telegram.messenger.C3316R.string.neurobots_store_bot_info_supported_language_ru
            java.lang.String r13 = org.telegram.messenger.LocaleController.getInternalString(r13)
        La8:
            r0.setText(r13)
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p032ui.shop.BotInfoActivity$observeBotAnalog$1.invoke2(java.util.List):void");
    }
}
