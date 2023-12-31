package com.microsoft.appcenter.ingestion.models.json;

import com.microsoft.appcenter.ingestion.models.Model;
import java.util.List;
/* loaded from: classes4.dex */
public interface ModelFactory<M extends Model> {
    M create();

    List<M> createList(int capacity);
}
