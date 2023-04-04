package com.iMe.bots.domain;

import com.iMe.bots.data.model.Response;
import java.util.List;
import java.util.Map;
/* compiled from: ResourceFactory.kt */
/* loaded from: classes3.dex */
public interface ResourceFactory {
    String getBotMlModelPath(String str, boolean z);

    List<Response> getBotResponsesList(String str, boolean z);

    Map<Integer, String> getBotWordsBag(String str, boolean z);

    List<Response> getHolidaysResponses(String str, boolean z);

    String getIntentValidatorMlPath(String str, int i, boolean z);

    Map<Integer, String> getIntentValidatorResponses(String str, int i, boolean z);

    Map<Integer, String> getIntentValidatorWordsBag(String str, int i, boolean z);
}
