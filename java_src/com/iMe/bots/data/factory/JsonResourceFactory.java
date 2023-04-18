package com.iMe.bots.data.factory;

import android.content.res.AssetManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.iMe.bots.data.model.Response;
import com.iMe.bots.data.model.response.ClassifierResponse;
import com.iMe.bots.data.model.response.HolidaysResponse;
import com.iMe.bots.domain.ResourceFactory;
import com.iMe.bots.extensions.InputStreamExtKt;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p035io.FilesKt__FileReadWriteKt;
/* compiled from: JsonResourceFactory.kt */
/* loaded from: classes3.dex */
public final class JsonResourceFactory implements ResourceFactory {
    private final AssetManager assetManager;
    private final Gson gson;
    private final File installPath;

    public JsonResourceFactory(AssetManager assetManager, File installPath) {
        Intrinsics.checkNotNullParameter(assetManager, "assetManager");
        Intrinsics.checkNotNullParameter(installPath, "installPath");
        this.assetManager = assetManager;
        this.installPath = installPath;
        this.gson = new Gson();
    }

    @Override // com.iMe.bots.domain.ResourceFactory
    public List<Response> getHolidaysResponses(String botId, boolean z) {
        String readText$default;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(botId, "botId");
        String str = z ? "bots/" + botId + "/response_Holidays.json" : this.installPath + '/' + botId + "/main_cl/" + botId + "_data.json";
        if (z) {
            InputStream open = this.assetManager.open(str);
            Intrinsics.checkNotNullExpressionValue(open, "assetManager.open(path)");
            readText$default = InputStreamExtKt.asString(open);
        } else {
            readText$default = FilesKt__FileReadWriteKt.readText$default(new File(str), null, 1, null);
        }
        Object fromJson = this.gson.fromJson(readText$default, new TypeToken<List<? extends HolidaysResponse>>() { // from class: com.iMe.bots.data.factory.JsonResourceFactory$getHolidaysResponses$responsesType$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "gson.fromJson(jsonString, responsesType)");
        List<HolidaysResponse> list = (List) fromJson;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (HolidaysResponse holidaysResponse : list) {
            arrayList.add(new Response(botId, holidaysResponse.getTag(), null, null, holidaysResponse.getResponse(), 12, null));
        }
        return arrayList;
    }

    @Override // com.iMe.bots.domain.ResourceFactory
    public Map<Integer, String> getBotWordsBag(String botId, boolean z) {
        String readText$default;
        int collectionSizeOrDefault;
        Map<Integer, String> map;
        Intrinsics.checkNotNullParameter(botId, "botId");
        String str = z ? "bots/" + botId + "/main_cl/" + botId + "_data.json" : this.installPath + '/' + botId + "/main_cl/" + botId + "_data.json";
        if (z) {
            InputStream open = this.assetManager.open(str);
            Intrinsics.checkNotNullExpressionValue(open, "assetManager.open(path)");
            readText$default = InputStreamExtKt.asString(open);
        } else {
            readText$default = FilesKt__FileReadWriteKt.readText$default(new File(str), null, 1, null);
        }
        Object fromJson = this.gson.fromJson(readText$default, new TypeToken<ClassifierResponse>() { // from class: com.iMe.bots.data.factory.JsonResourceFactory$getBotWordsBag$responsesType$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "gson.fromJson(jsonString, responsesType)");
        List<String> words = ((ClassifierResponse) fromJson).getWords();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(words, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i = 0;
        for (Object obj : words) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(TuplesKt.m80to(Integer.valueOf(i), (String) obj));
            i = i2;
        }
        map = MapsKt__MapsKt.toMap(arrayList);
        return map;
    }

    @Override // com.iMe.bots.domain.ResourceFactory
    public List<Response> getBotResponsesList(String botId, boolean z) {
        String readText$default;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(botId, "botId");
        String str = z ? "bots/" + botId + "/main_cl/" + botId + "_data.json" : this.installPath + '/' + botId + "/main_cl/" + botId + "_data.json";
        if (z) {
            InputStream open = this.assetManager.open(str);
            Intrinsics.checkNotNullExpressionValue(open, "assetManager.open(path)");
            readText$default = InputStreamExtKt.asString(open);
        } else {
            readText$default = FilesKt__FileReadWriteKt.readText$default(new File(str), null, 1, null);
        }
        Object fromJson = this.gson.fromJson(readText$default, new TypeToken<ClassifierResponse>() { // from class: com.iMe.bots.data.factory.JsonResourceFactory$getBotResponsesList$responsesType$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "gson.fromJson(jsonString, responsesType)");
        List<ClassifierResponse.ClassifierItem> classes = ((ClassifierResponse) fromJson).getClasses();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(classes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ClassifierResponse.ClassifierItem classifierItem : classes) {
            String tag = classifierItem.getTag();
            String gif = classifierItem.getGif();
            if (gif == null) {
                gif = "";
            }
            arrayList.add(new Response(botId, tag, gif, null, classifierItem.getResponse(), 8, null));
        }
        return arrayList;
    }

    @Override // com.iMe.bots.domain.ResourceFactory
    public String getBotMlModelPath(String botId, boolean z) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        if (z) {
            return "bots/" + botId + "/main_cl/" + botId + "_model.tflite";
        }
        return this.installPath + '/' + botId + "/main_cl/" + botId + "_model.tflite";
    }

    @Override // com.iMe.bots.domain.ResourceFactory
    public String getIntentValidatorMlPath(String botId, int i, boolean z) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        if (z) {
            return "bots/" + botId + "/intents_cl/intent_" + i + "/intent_" + i + "_model.tflite";
        }
        return this.installPath + '/' + botId + "/intents_cl/intent_" + i + "/intent_" + i + "_model.tflite";
    }

    @Override // com.iMe.bots.domain.ResourceFactory
    public Map<Integer, String> getIntentValidatorWordsBag(String botId, int i, boolean z) {
        String readText$default;
        int collectionSizeOrDefault;
        Map<Integer, String> map;
        Intrinsics.checkNotNullParameter(botId, "botId");
        String str = z ? "bots/" + botId + "/intents_cl/intent_" + i + "/intent_" + i + "_data.json" : this.installPath + '/' + botId + "/intents_cl/intent_" + i + "/intent_" + i + "_data.json";
        if (z) {
            InputStream open = this.assetManager.open(str);
            Intrinsics.checkNotNullExpressionValue(open, "assetManager.open(path)");
            readText$default = InputStreamExtKt.asString(open);
        } else {
            readText$default = FilesKt__FileReadWriteKt.readText$default(new File(str), null, 1, null);
        }
        Object fromJson = this.gson.fromJson(readText$default, new TypeToken<ClassifierResponse>() { // from class: com.iMe.bots.data.factory.JsonResourceFactory$getIntentValidatorWordsBag$responsesType$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "gson.fromJson(jsonString, responsesType)");
        List<String> words = ((ClassifierResponse) fromJson).getWords();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(words, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i2 = 0;
        for (Object obj : words) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(TuplesKt.m80to(Integer.valueOf(i2), (String) obj));
            i2 = i3;
        }
        map = MapsKt__MapsKt.toMap(arrayList);
        return map;
    }

    @Override // com.iMe.bots.domain.ResourceFactory
    public Map<Integer, String> getIntentValidatorResponses(String botId, int i, boolean z) {
        String readText$default;
        int collectionSizeOrDefault;
        Map<Integer, String> map;
        Intrinsics.checkNotNullParameter(botId, "botId");
        String str = z ? "bots/" + botId + "/intents_cl/intent_" + i + "/intent_" + i + "_data.json" : this.installPath + '/' + botId + "/intents_cl/intent_" + i + "/intent_" + i + "_data.json";
        if (z) {
            InputStream open = this.assetManager.open(str);
            Intrinsics.checkNotNullExpressionValue(open, "assetManager.open(path)");
            readText$default = InputStreamExtKt.asString(open);
        } else {
            readText$default = FilesKt__FileReadWriteKt.readText$default(new File(str), null, 1, null);
        }
        Object fromJson = this.gson.fromJson(readText$default, new TypeToken<ClassifierResponse>() { // from class: com.iMe.bots.data.factory.JsonResourceFactory$getIntentValidatorResponses$responsesType$1
        }.getType());
        Intrinsics.checkNotNullExpressionValue(fromJson, "gson.fromJson(jsonString, responsesType)");
        List<ClassifierResponse.ClassifierItem> classes = ((ClassifierResponse) fromJson).getClasses();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(classes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i2 = 0;
        for (Object obj : classes) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(TuplesKt.m80to(Integer.valueOf(i2), ((ClassifierResponse.ClassifierItem) obj).getTag()));
            i2 = i3;
        }
        map = MapsKt__MapsKt.toMap(arrayList);
        return map;
    }
}
