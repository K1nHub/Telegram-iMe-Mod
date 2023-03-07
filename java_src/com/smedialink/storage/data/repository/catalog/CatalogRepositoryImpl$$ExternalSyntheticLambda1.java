package com.smedialink.storage.data.repository.catalog;

import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
import java.util.List;
/* loaded from: classes3.dex */
public final /* synthetic */ class CatalogRepositoryImpl$$ExternalSyntheticLambda1 implements Function {
    public static final /* synthetic */ CatalogRepositoryImpl$$ExternalSyntheticLambda1 INSTANCE = new CatalogRepositoryImpl$$ExternalSyntheticLambda1();

    private /* synthetic */ CatalogRepositoryImpl$$ExternalSyntheticLambda1() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1353getCategories$lambda9;
        m1353getCategories$lambda9 = CatalogRepositoryImpl.m1353getCategories$lambda9((List) obj);
        return m1353getCategories$lambda9;
    }
}
