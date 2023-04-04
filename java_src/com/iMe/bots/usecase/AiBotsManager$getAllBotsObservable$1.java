package com.iMe.bots.usecase;

import com.iMe.bots.data.model.database.BotsDbModel;
import com.iMe.bots.domain.model.BotLanguage;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
final class AiBotsManager$getAllBotsObservable$1 extends Lambda implements Function1<List<? extends BotsDbModel>, List<? extends BotsDbModel>> {
    final /* synthetic */ BotLanguage $botLanguage;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$getAllBotsObservable$1(BotLanguage botLanguage) {
        super(1);
        this.$botLanguage = botLanguage;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends BotsDbModel> invoke(List<? extends BotsDbModel> list) {
        return invoke2((List<BotsDbModel>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<BotsDbModel> invoke2(List<BotsDbModel> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        BotLanguage botLanguage = this.$botLanguage;
        ArrayList arrayList = new ArrayList();
        for (Object obj : it) {
            if (((BotsDbModel) obj).getLang() == botLanguage) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
