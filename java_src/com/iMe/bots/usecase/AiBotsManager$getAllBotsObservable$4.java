package com.iMe.bots.usecase;

import com.iMe.bots.data.mapper.ShopItemMapper;
import com.iMe.bots.data.model.database.BotsDbModel;
import com.iMe.bots.domain.model.ShopItem;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$getAllBotsObservable$4 extends Lambda implements Function1<List<? extends BotsDbModel>, List<? extends ShopItem>> {
    final /* synthetic */ String $language;
    final /* synthetic */ AiBotsManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AiBotsManager$getAllBotsObservable$4(AiBotsManager aiBotsManager, String str) {
        super(1);
        this.this$0 = aiBotsManager;
        this.$language = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends ShopItem> invoke(List<? extends BotsDbModel> list) {
        return invoke2((List<BotsDbModel>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<ShopItem> invoke2(List<BotsDbModel> it) {
        ShopItemMapper shopItemMapper;
        Intrinsics.checkNotNullParameter(it, "it");
        if (this.this$0.getCurrentTags().isEmpty()) {
            AiBotsManager aiBotsManager = this.this$0;
            aiBotsManager.setCurrentTags(aiBotsManager.getBotsRepository().getTags());
        }
        shopItemMapper = this.this$0.shopItemMapper;
        return shopItemMapper.mapList(it, this.$language, this.this$0.getCurrentTags());
    }
}
