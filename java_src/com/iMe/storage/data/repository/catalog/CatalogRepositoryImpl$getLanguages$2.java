package com.iMe.storage.data.repository.catalog;

import com.iMe.storage.data.locale.p027db.model.catalog.CatalogLanguageDb;
import com.iMe.storage.data.mapper.catalog.ChannelLanguageMappingKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class CatalogRepositoryImpl$getLanguages$2 extends Lambda implements Function1<List<? extends CatalogLanguageDb>, ObservableSource<? extends Result<? extends List<? extends CatalogLanguage>>>> {
    final /* synthetic */ CatalogRepositoryImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getLanguages$2(CatalogRepositoryImpl catalogRepositoryImpl) {
        super(1);
        this.this$0 = catalogRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<? extends CatalogLanguage>>> invoke(List<? extends CatalogLanguageDb> list) {
        return invoke2((List<CatalogLanguageDb>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<List<CatalogLanguage>>> invoke2(List<CatalogLanguageDb> entities) {
        int collectionSizeOrDefault;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(entities, "entities");
        if (entities.isEmpty()) {
            Observable<Result<List<CatalogLanguage>>> languages = this.this$0.getLanguages(true);
            schedulersProvider = this.this$0.schedulersProvider;
            return languages.subscribeOn(schedulersProvider.mo699io());
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entities, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CatalogLanguageDb catalogLanguageDb : entities) {
            arrayList.add(ChannelLanguageMappingKt.mapToDomain(catalogLanguageDb));
        }
        Observable just = Observable.just(Result.Companion.success(arrayList));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
