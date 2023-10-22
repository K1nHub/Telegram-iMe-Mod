package org.ton.tlb;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.ton.bitstring.BitString;
import org.ton.tlb.AbstractTlbConstructor;
import org.ton.tlb.exception.ParseTlbException;
/* compiled from: TlbConstructor.kt */
/* loaded from: classes6.dex */
public abstract class AbstractTlbConstructor<T> {
    public static final Companion Companion = new Companion(null);
    private final Lazy id$delegate;
    private final String schema;

    public AbstractTlbConstructor(String schema, final BitString bitString) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(schema, "schema");
        this.schema = schema;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<BitString>() { // from class: org.ton.tlb.AbstractTlbConstructor$id$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final BitString invoke() {
                BitString bitString2 = BitString.this;
                if (bitString2 == null) {
                    AbstractTlbConstructor.Companion companion = AbstractTlbConstructor.Companion;
                    return companion.calculateId(companion.formatSchema(this.getSchema()));
                }
                return bitString2;
            }
        });
        this.id$delegate = lazy;
    }

    public final String getSchema() {
        return this.schema;
    }

    public final BitString getId() {
        return (BitString) this.id$delegate.getValue();
    }

    public String toString() {
        return this.schema;
    }

    /* compiled from: TlbConstructor.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BitString calculateId(String schema) {
            List split$default;
            boolean contains$default;
            boolean contains$default2;
            List split$default2;
            List split$default3;
            Intrinsics.checkNotNullParameter(schema, "schema");
            if (schema.length() == 0) {
                return BitString.Companion.m46of(0);
            }
            try {
                split$default = StringsKt__StringsKt.split$default((CharSequence) schema, new String[]{" "}, false, 0, 6, (Object) null);
                String str = (String) CollectionsKt.first((List<? extends Object>) split$default);
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, '$', false, 2, (Object) null);
                if (contains$default) {
                    split$default3 = StringsKt__StringsKt.split$default((CharSequence) str, new char[]{'$'}, false, 0, 6, (Object) null);
                    String str2 = (String) split$default3.get(1);
                    if (!Intrinsics.areEqual(str2, "_")) {
                        return BitString.Companion.binary(str2);
                    }
                } else {
                    contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) str, '#', false, 2, (Object) null);
                    if (contains$default2) {
                        split$default2 = StringsKt__StringsKt.split$default((CharSequence) str, new char[]{'#'}, false, 0, 6, (Object) null);
                        String str3 = (String) split$default2.get(1);
                        if (!Intrinsics.areEqual(str3, "_")) {
                            return BitString.Companion.m45of(str3);
                        }
                    }
                }
                return BitString.Companion.m46of(0);
            } catch (Exception e) {
                throw new ParseTlbException("Failed to calculate id for schema: `" + schema + '`', e);
            }
        }

        public final String formatSchema(String schema) {
            CharSequence trim;
            String replace$default;
            String replace$default2;
            String replace$default3;
            Intrinsics.checkNotNullParameter(schema, "schema");
            trim = StringsKt__StringsKt.trim(new Regex("\\s+").replace(schema, " "));
            replace$default = StringsKt__StringsJVMKt.replace$default(trim.toString(), "(", "", false, 4, (Object) null);
            replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, ")", "", false, 4, (Object) null);
            replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, ";", "", false, 4, (Object) null);
            return replace$default3;
        }
    }
}
