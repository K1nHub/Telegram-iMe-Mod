package org.ton.api.adnl;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlIdShort.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AdnlIdShortImpl implements AdnlIdShort {
    public static final Companion Companion = new Companion(null);
    private final Lazy _hashCode$delegate;
    private final Lazy _string$delegate;

    /* renamed from: id */
    private final byte[] f2027id;

    /* compiled from: AdnlIdShort.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<AdnlIdShortImpl> serializer() {
            return AdnlIdShortImpl$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ AdnlIdShortImpl(int i, byte[] bArr, SerializationConstructorMarker serializationConstructorMarker) {
        Lazy lazy;
        Lazy lazy2;
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, AdnlIdShortImpl$$serializer.INSTANCE.getDescriptor());
        }
        this.f2027id = bArr;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Integer>() { // from class: org.ton.api.adnl.AdnlIdShortImpl.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AdnlIdShortImpl.this.getId().hashCode());
            }
        });
        this._hashCode$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<String>() { // from class: org.ton.api.adnl.AdnlIdShortImpl.2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return AdnlIdShortImpl.this.getId().toString();
            }
        });
        this._string$delegate = lazy2;
    }

    public AdnlIdShortImpl(byte[] id) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(id, "id");
        this.f2027id = id;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Integer>() { // from class: org.ton.api.adnl.AdnlIdShortImpl$_hashCode$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AdnlIdShortImpl.this.getId().hashCode());
            }
        });
        this._hashCode$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<String>() { // from class: org.ton.api.adnl.AdnlIdShortImpl$_string$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return AdnlIdShortImpl.this.getId().toString();
            }
        });
        this._string$delegate = lazy2;
    }

    @Override // org.ton.api.adnl.AdnlIdShort
    public byte[] getId() {
        return this.f2027id;
    }

    private final int get_hashCode() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    private final String get_string() {
        return (String) this._string$delegate.getValue();
    }

    @Override // java.lang.Comparable
    public int compareTo(AdnlIdShort other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i = 0; i < 32; i++) {
            int i2 = getId()[i] & 255;
            int i3 = other.getId()[i] & 255;
            if (i2 != i3) {
                return i2 - i3;
            }
        }
        return 0;
    }

    public int hashCode() {
        return get_hashCode();
    }

    public String toString() {
        return get_string();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AdnlIdShort) && Intrinsics.areEqual(getId(), ((AdnlIdShort) obj).getId());
    }
}
