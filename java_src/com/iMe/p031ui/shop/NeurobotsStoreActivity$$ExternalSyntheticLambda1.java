package com.iMe.p031ui.shop;

import io.reactivex.functions.BiFunction;
import java.util.List;
/* renamed from: com.iMe.ui.shop.NeurobotsStoreActivity$$ExternalSyntheticLambda1 */
/* loaded from: classes3.dex */
public final /* synthetic */ class NeurobotsStoreActivity$$ExternalSyntheticLambda1 implements BiFunction {
    public static final /* synthetic */ NeurobotsStoreActivity$$ExternalSyntheticLambda1 INSTANCE = new NeurobotsStoreActivity$$ExternalSyntheticLambda1();

    private /* synthetic */ NeurobotsStoreActivity$$ExternalSyntheticLambda1() {
    }

    @Override // io.reactivex.functions.BiFunction
    public final Object apply(Object obj, Object obj2) {
        List listenForSearchResults$lambda$8;
        listenForSearchResults$lambda$8 = NeurobotsStoreActivity.listenForSearchResults$lambda$8((List) obj, (String) obj2);
        return listenForSearchResults$lambda$8;
    }
}