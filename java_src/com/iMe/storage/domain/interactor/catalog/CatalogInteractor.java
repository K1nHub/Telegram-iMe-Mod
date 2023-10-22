package com.iMe.storage.domain.interactor.catalog;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import com.iMe.storage.domain.model.catalog.CategoriesPreviewsCursored;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.repository.catalog.CatalogRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogInteractor.kt */
/* loaded from: classes3.dex */
public final class CatalogInteractor {
    private final CatalogRepository catalogRepository;
    private final SchedulersProvider schedulersProvider;

    public CatalogInteractor(CatalogRepository catalogRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(catalogRepository, "catalogRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.catalogRepository = catalogRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<List<CatalogLanguage>>> getLanguages() {
        Observable<Result<List<CatalogLanguage>>> subscribeOn = this.catalogRepository.getLanguages(false).startWith((Observable<Result<List<CatalogLanguage>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1010io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CategoriesPreviewsCursored>> getCatalogPreview(ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable<Result<CategoriesPreviewsCursored>> subscribeOn = this.catalogRepository.getCatalogPreview(chatType, str).startWith((Observable<Result<CategoriesPreviewsCursored>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1010io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<CategoryWithCounter>>> getCategories(ChatType chatType, boolean z) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable<Result<List<CategoryWithCounter>>> subscribeOn = this.catalogRepository.getCategories(chatType, z).subscribeOn(this.schedulersProvider.mo1010io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CampaignsCursored>> getAllCampaigns(ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable<Result<CampaignsCursored>> subscribeOn = this.catalogRepository.getAllCampaigns(chatType, str).startWith((Observable<Result<CampaignsCursored>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1010io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CampaignsCursored>> getCampaignsByCategoryId(long j, ChatType chatType, String str) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Observable<Result<CampaignsCursored>> subscribeOn = this.catalogRepository.getCampaignsByCategoryId(j, chatType, str).startWith((Observable<Result<CampaignsCursored>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1010io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "catalogRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }
}
