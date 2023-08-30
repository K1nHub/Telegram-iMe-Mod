package com.iMe.storage.domain.repository.catalog;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import com.iMe.storage.domain.model.catalog.CategoriesPreviewsCursored;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import com.iMe.storage.domain.model.catalog.ChatType;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: CatalogRepository.kt */
/* loaded from: classes3.dex */
public interface CatalogRepository {
    Observable<Result<CampaignsCursored>> getAllCampaigns(ChatType chatType, String str);

    Observable<Result<CampaignsCursored>> getCampaignsByCategoryId(long j, ChatType chatType, String str);

    Observable<Result<CategoriesPreviewsCursored>> getCatalogPreview(ChatType chatType, String str);

    Observable<Result<List<CategoryWithCounter>>> getCategories(ChatType chatType, boolean z);

    Observable<Result<List<CatalogLanguage>>> getLanguages(boolean z);
}
