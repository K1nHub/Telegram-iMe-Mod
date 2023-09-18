package com.iMe.storage.data.mapper.catalog;

import com.iMe.storage.data.locale.p027db.model.catalog.CatalogLanguageDb;
import com.iMe.storage.data.network.model.response.catalog.CatalogLanguageResponse;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelLanguageMapping.kt */
/* loaded from: classes4.dex */
public final class ChannelLanguageMappingKt {
    public static final CatalogLanguage mapToDomain(CatalogLanguageResponse catalogLanguageResponse) {
        Intrinsics.checkNotNullParameter(catalogLanguageResponse, "<this>");
        return new CatalogLanguage(catalogLanguageResponse.getId(), catalogLanguageResponse.getNativeTitle(), catalogLanguageResponse.getTitle());
    }

    public static final CatalogLanguage mapToDomain(CatalogLanguageDb catalogLanguageDb) {
        Intrinsics.checkNotNullParameter(catalogLanguageDb, "<this>");
        return new CatalogLanguage(catalogLanguageDb.getId(), catalogLanguageDb.getNativeTitle(), catalogLanguageDb.getTitle());
    }

    public static final CatalogLanguageDb mapToDb(CatalogLanguage catalogLanguage) {
        Intrinsics.checkNotNullParameter(catalogLanguage, "<this>");
        return new CatalogLanguageDb(catalogLanguage.getId(), catalogLanguage.getNativeTitle(), catalogLanguage.getTitle());
    }
}
