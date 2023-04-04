package com.iMe.bots.usecase;

import com.iMe.bots.data.mapper.BotCategoryMapper;
import com.iMe.bots.data.model.database.BotsCategoryDbModel;
import com.iMe.bots.domain.model.SmartBotCategory;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$getAvailableCategories$1 extends Lambda implements Function1<List<? extends BotsCategoryDbModel>, List<? extends SmartBotCategory>> {
    final /* synthetic */ String $language;
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$getAvailableCategories$1(AiBotsManager aiBotsManager, String str) {
        super(1);
        this.this$0 = aiBotsManager;
        this.$language = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends SmartBotCategory> invoke(List<? extends BotsCategoryDbModel> list) {
        return invoke2((List<BotsCategoryDbModel>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<SmartBotCategory> invoke2(List<BotsCategoryDbModel> it) {
        BotCategoryMapper botCategoryMapper;
        Intrinsics.checkNotNullParameter(it, "it");
        botCategoryMapper = this.this$0.categoriesMapper;
        return botCategoryMapper.mapList(it, this.$language);
    }
}
