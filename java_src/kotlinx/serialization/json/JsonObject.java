package kotlinx.serialization.json;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.internal.StringOpsKt;
import p033j$.util.Map;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.wrappers.C$r8$wrapper$java$util$function$BiFunction$VWRP;
import p033j$.wrappers.C$r8$wrapper$java$util$function$Function$VWRP;
/* compiled from: JsonElement.kt */
@Serializable(with = JsonObjectSerializer.class)
/* loaded from: classes4.dex */
public final class JsonObject extends JsonElement implements Map<String, JsonElement>, KMappedMarker, p033j$.util.Map {
    public static final Companion Companion = new Companion(null);
    private final Map<String, JsonElement> content;

    @Override // java.util.Map, p033j$.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // p033j$.util.Map
    public /* bridge */ /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.serialization.json.JsonElement, java.lang.Object] */
    @Override // java.util.Map
    public /* synthetic */ JsonElement compute(String str, java.util.function.BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        return compute(str, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
    }

    @Override // p033j$.util.Map
    public /* bridge */ /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.serialization.json.JsonElement, java.lang.Object] */
    @Override // java.util.Map
    public /* synthetic */ JsonElement computeIfAbsent(String str, java.util.function.Function<? super String, ? extends JsonElement> function) {
        return computeIfAbsent(str, C$r8$wrapper$java$util$function$Function$VWRP.convert(function));
    }

    @Override // p033j$.util.Map
    public /* bridge */ /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.serialization.json.JsonElement, java.lang.Object] */
    @Override // java.util.Map
    public /* synthetic */ JsonElement computeIfPresent(String str, java.util.function.BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        return computeIfPresent(str, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
    }

    public boolean containsKey(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.content.containsKey(key);
    }

    public boolean containsValue(JsonElement value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return this.content.containsValue(value);
    }

    @Override // p033j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    public JsonElement get(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.content.get(key);
    }

    public Set<Map.Entry<String, JsonElement>> getEntries() {
        return this.content.entrySet();
    }

    public Set<String> getKeys() {
        return this.content.keySet();
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return Map.CC.$default$getOrDefault(this, obj, obj2);
    }

    public int getSize() {
        return this.content.size();
    }

    public Collection<JsonElement> getValues() {
        return this.content.values();
    }

    @Override // java.util.Map, p033j$.util.Map
    public boolean isEmpty() {
        return this.content.isEmpty();
    }

    @Override // p033j$.util.Map
    public /* bridge */ /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.serialization.json.JsonElement, java.lang.Object] */
    @Override // java.util.Map
    public /* synthetic */ JsonElement merge(String str, JsonElement jsonElement, java.util.function.BiFunction<? super JsonElement, ? super JsonElement, ? extends JsonElement> biFunction) {
        return merge(str, jsonElement, C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map, p033j$.util.Map
    public void putAll(java.util.Map<? extends String, ? extends JsonElement> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* bridge */ /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map, p033j$.util.Map
    public JsonElement remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map, p033j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* bridge */ /* synthetic */ Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* bridge */ /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // p033j$.util.Map
    public void replaceAll(BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* synthetic */ void replaceAll(java.util.function.BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        replaceAll(C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(biFunction));
    }

    /* compiled from: JsonElement.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<JsonObject> serializer() {
            return JsonObjectSerializer.INSTANCE;
        }
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsKey((String) obj);
        }
        return false;
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof JsonElement) {
            return containsValue((JsonElement) obj);
        }
        return false;
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ Set<Map.Entry<String, JsonElement>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ Set<String> keySet() {
        return getKeys();
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ Collection<JsonElement> values() {
        return getValues();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JsonObject(java.util.Map<String, ? extends JsonElement> content) {
        super(null);
        Intrinsics.checkNotNullParameter(content, "content");
        this.content = content;
    }

    @Override // java.util.Map, p033j$.util.Map
    public boolean equals(Object obj) {
        return Intrinsics.areEqual(this.content, obj);
    }

    @Override // java.util.Map, p033j$.util.Map
    public int hashCode() {
        return this.content.hashCode();
    }

    public String toString() {
        String joinToString$default;
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(this.content.entrySet(), ",", "{", "}", 0, null, new Function1<Map.Entry<? extends String, ? extends JsonElement>, CharSequence>() { // from class: kotlinx.serialization.json.JsonObject$toString$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends JsonElement> entry) {
                return invoke2((Map.Entry<String, ? extends JsonElement>) entry);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final CharSequence invoke2(Map.Entry<String, ? extends JsonElement> entry) {
                Intrinsics.checkNotNullParameter(entry, "<name for destructuring parameter 0>");
                StringBuilder sb = new StringBuilder();
                StringOpsKt.printQuoted(sb, entry.getKey());
                sb.append(':');
                sb.append(entry.getValue());
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            }
        }, 24, null);
        return joinToString$default;
    }
}
