package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
/* compiled from: KotlinClassHeader.kt */
/* loaded from: classes4.dex */
public final class KotlinClassHeader {
    private final String[] data;
    private final int extraInt;
    private final String extraString;
    private final String[] incompatibleData;
    private final Kind kind;
    private final JvmMetadataVersion metadataVersion;
    private final String[] strings;

    private final boolean has(int i, int i2) {
        return (i & i2) != 0;
    }

    public KotlinClassHeader(Kind kind, JvmMetadataVersion metadataVersion, String[] strArr, String[] strArr2, String[] strArr3, String str, int i, String str2, byte[] bArr) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        this.kind = kind;
        this.metadataVersion = metadataVersion;
        this.data = strArr;
        this.incompatibleData = strArr2;
        this.strings = strArr3;
        this.extraString = str;
        this.extraInt = i;
    }

    public final Kind getKind() {
        return this.kind;
    }

    public final JvmMetadataVersion getMetadataVersion() {
        return this.metadataVersion;
    }

    public final String[] getData() {
        return this.data;
    }

    public final String[] getIncompatibleData() {
        return this.incompatibleData;
    }

    public final String[] getStrings() {
        return this.strings;
    }

    /* compiled from: KotlinClassHeader.kt */
    /* loaded from: classes4.dex */
    public enum Kind {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);
        
        public static final Companion Companion = new Companion(null);
        private static final Map<Integer, Kind> entryById;

        /* renamed from: id */
        private final int f1376id;

        public static final Kind getById(int i) {
            return Companion.getById(i);
        }

        Kind(int i) {
            this.f1376id = i;
        }

        static {
            int mapCapacity;
            int coerceAtLeast;
            Kind[] values = values();
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(values.length);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (Kind kind : values) {
                linkedHashMap.put(Integer.valueOf(kind.f1376id), kind);
            }
            entryById = linkedHashMap;
        }

        /* compiled from: KotlinClassHeader.kt */
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Kind getById(int i) {
                Kind kind = (Kind) Kind.entryById.get(Integer.valueOf(i));
                return kind == null ? Kind.UNKNOWN : kind;
            }
        }
    }

    public final String getMultifileClassName() {
        String str = this.extraString;
        if (this.kind == Kind.MULTIFILE_CLASS_PART) {
            return str;
        }
        return null;
    }

    public final List<String> getMultifilePartNames() {
        List<String> emptyList;
        String[] strArr = this.data;
        if (!(this.kind == Kind.MULTIFILE_CLASS)) {
            strArr = null;
        }
        List<String> asList = strArr != null ? ArraysKt___ArraysJvmKt.asList(strArr) : null;
        if (asList == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return asList;
    }

    public final boolean isUnstableJvmIrBinary() {
        return has(this.extraInt, 16) && !has(this.extraInt, 32);
    }

    public final boolean isUnstableFirBinary() {
        return has(this.extraInt, 64) && !has(this.extraInt, 32);
    }

    public final boolean isPreRelease() {
        return has(this.extraInt, 2);
    }

    public String toString() {
        return this.kind + " version=" + this.metadataVersion;
    }
}
