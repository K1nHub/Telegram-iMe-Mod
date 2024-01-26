package org.ton.bitstring;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.serialization.Serializable;
/* compiled from: BitString.kt */
@Serializable(with = FiftHexBitStringSerializer.class)
/* loaded from: classes6.dex */
public interface BitString extends Iterable<Boolean>, Comparable<BitString>, KMappedMarker {
    public static final Companion Companion = Companion.$$INSTANCE;

    BitString commonPrefixWith(BitString bitString);

    boolean get(int i);

    int getSize();

    BitString slice(int i, int i2);

    BitString slice(IntRange intRange);

    String toBinary();

    BitString toBitString();

    boolean[] toBooleanArray();

    byte[] toByteArray(boolean z);

    String toHex();

    /* compiled from: BitString.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static BitString toBitString(BitString bitString) {
            return bitString;
        }

        public static /* synthetic */ byte[] toByteArray$default(BitString bitString, boolean z, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    z = false;
                }
                return bitString.toByteArray(z);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toByteArray");
        }

        public static BitString commonPrefixWith(BitString bitString, BitString other) {
            String commonPrefixWith$default;
            Intrinsics.checkNotNullParameter(other, "other");
            Companion companion = BitString.Companion;
            commonPrefixWith$default = StringsKt__StringsKt.commonPrefixWith$default(bitString.toBinary(), other.toBinary(), false, 2, null);
            return companion.binary(commonPrefixWith$default);
        }

        public static BitString slice(BitString bitString, IntRange indices) {
            Intrinsics.checkNotNullParameter(indices, "indices");
            return bitString.slice(indices.getFirst(), indices.getLast());
        }

        public static /* synthetic */ BitString slice$default(BitString bitString, int i, int i2, int i3, Object obj) {
            if (obj == null) {
                if ((i3 & 2) != 0) {
                    i2 = bitString.getSize();
                }
                return bitString.slice(i, i2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: slice");
        }

        public static BitString slice(BitString bitString, int i, int i2) {
            Companion companion = BitString.Companion;
            String substring = bitString.toBinary().substring(i, i2);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return companion.binary(substring);
        }

        public static int compareTo(BitString bitString, BitString other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return bitString.toBinary().compareTo(other.toBinary());
        }

        public static String toBinary(BitString bitString) {
            String joinToString$default;
            joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(bitString, "", null, null, 0, null, new Function1<Boolean, CharSequence>() { // from class: org.ton.bitstring.BitString$toBinary$1
                public final CharSequence invoke(boolean z) {
                    return z ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : SessionDescription.SUPPORTED_SDP_VERSION;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ CharSequence invoke(Boolean bool) {
                    return invoke(bool.booleanValue());
                }
            }, 30, null);
            return joinToString$default;
        }
    }

    /* compiled from: BitString.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final BitString empty() {
            return EmptyBitString.INSTANCE;
        }

        /* renamed from: of */
        public final BitString m43of(byte[] byteArray, int i) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            return ByteBackedBitString.Companion.m40of(byteArray, i);
        }

        /* renamed from: of */
        public final BitString m46of(int i) {
            if (i == 0) {
                return empty();
            }
            return ByteBackedBitString.Companion.m41of(i);
        }

        public final BitString binary(String bits) {
            boolean z;
            Intrinsics.checkNotNullParameter(bits, "bits");
            if (bits.length() == 0) {
                return empty();
            }
            ArrayList arrayList = new ArrayList(bits.length());
            for (int i = 0; i < bits.length(); i++) {
                char charAt = bits.charAt(i);
                if (charAt == '1') {
                    z = true;
                } else if (charAt != '0') {
                    throw new IllegalArgumentException("Invalid bit: `" + charAt + '`');
                } else {
                    z = false;
                }
                arrayList.add(Boolean.valueOf(z));
            }
            return BitString.Companion.m44of(arrayList);
        }

        /* renamed from: of */
        public final BitString m42of(boolean... bits) {
            Intrinsics.checkNotNullParameter(bits, "bits");
            int i = 0;
            if (bits.length == 0) {
                return empty();
            }
            ByteBackedMutableBitString m39of = ByteBackedMutableBitString.Companion.m39of(bits.length);
            int length = bits.length;
            int i2 = 0;
            while (i < length) {
                m39of.set(i2, bits[i]);
                i++;
                i2++;
            }
            return m39of;
        }

        /* renamed from: of */
        public final BitString m44of(Collection<Boolean> bits) {
            Intrinsics.checkNotNullParameter(bits, "bits");
            if (bits.isEmpty()) {
                return empty();
            }
            ByteBackedMutableBitString m39of = ByteBackedMutableBitString.Companion.m39of(bits.size());
            int i = 0;
            for (Object obj : bits) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                m39of.set(i, ((Boolean) obj).booleanValue());
                i = i2;
            }
            return m39of;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
        /* renamed from: of */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final org.ton.bitstring.BitString m45of(java.lang.String r6) {
            /*
                r5 = this;
                java.lang.String r0 = "hex"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                int r0 = r6.length()
                r1 = 0
                r2 = 1
                if (r0 != 0) goto Lf
                r0 = r2
                goto L10
            Lf:
                r0 = r1
            L10:
                if (r0 == 0) goto L17
                org.ton.bitstring.BitString r6 = r5.empty()
                return r6
            L17:
                int r0 = r6.length()
                if (r0 <= 0) goto L1f
                r0 = r2
                goto L20
            L1f:
                r0 = r1
            L20:
                if (r0 == 0) goto L2c
                char r0 = kotlin.text.StringsKt.last(r6)
                r3 = 95
                if (r0 != r3) goto L2c
                r0 = r2
                goto L2d
            L2c:
                r0 = r1
            L2d:
                kotlin.sequences.Sequence r6 = kotlin.text.StringsKt.asSequence(r6)
                org.ton.bitstring.BitString$Companion$of$bits$1 r3 = new kotlin.jvm.functions.Function1<java.lang.Character, java.lang.Boolean>() { // from class: org.ton.bitstring.BitString$Companion$of$bits$1
                    static {
                        /*
                            org.ton.bitstring.BitString$Companion$of$bits$1 r0 = new org.ton.bitstring.BitString$Companion$of$bits$1
                            r0.<init>()
                            
                            // error: 0x0005: SPUT  (r0 I:org.ton.bitstring.BitString$Companion$of$bits$1) org.ton.bitstring.BitString$Companion$of$bits$1.INSTANCE org.ton.bitstring.BitString$Companion$of$bits$1
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString$Companion$of$bits$1.<clinit>():void");
                    }

                    {
                        /*
                            r1 = this;
                            r0 = 1
                            r1.<init>(r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString$Companion$of$bits$1.<init>():void");
                    }

                    public final java.lang.Boolean invoke(char r2) {
                        /*
                            r1 = this;
                            r0 = 95
                            if (r2 == r0) goto L6
                            r2 = 1
                            goto L7
                        L6:
                            r2 = 0
                        L7:
                            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                            return r2
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString$Companion$of$bits$1.invoke(char):java.lang.Boolean");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ java.lang.Boolean invoke(java.lang.Character r1) {
                        /*
                            r0 = this;
                            java.lang.Character r1 = (java.lang.Character) r1
                            char r1 = r1.charValue()
                            java.lang.Boolean r1 = r0.invoke(r1)
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString$Companion$of$bits$1.invoke(java.lang.Object):java.lang.Object");
                    }
                }
                kotlin.sequences.Sequence r6 = kotlin.sequences.SequencesKt.takeWhile(r6, r3)
                org.ton.bitstring.BitString$Companion$of$bits$2 r3 = new kotlin.jvm.functions.Function1<java.lang.Character, java.util.List<? extends java.lang.Boolean>>() { // from class: org.ton.bitstring.BitString$Companion$of$bits$2
                    static {
                        /*
                            org.ton.bitstring.BitString$Companion$of$bits$2 r0 = new org.ton.bitstring.BitString$Companion$of$bits$2
                            r0.<init>()
                            
                            // error: 0x0005: SPUT  (r0 I:org.ton.bitstring.BitString$Companion$of$bits$2) org.ton.bitstring.BitString$Companion$of$bits$2.INSTANCE org.ton.bitstring.BitString$Companion$of$bits$2
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString$Companion$of$bits$2.<clinit>():void");
                    }

                    {
                        /*
                            r1 = this;
                            r0 = 1
                            r1.<init>(r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString$Companion$of$bits$2.<init>():void");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ java.util.List<? extends java.lang.Boolean> invoke(java.lang.Character r1) {
                        /*
                            r0 = this;
                            java.lang.Character r1 = (java.lang.Character) r1
                            char r1 = r1.charValue()
                            java.util.List r1 = r0.invoke(r1)
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString$Companion$of$bits$2.invoke(java.lang.Object):java.lang.Object");
                    }

                    public final java.util.List<java.lang.Boolean> invoke(char r6) {
                        /*
                            r5 = this;
                            r0 = 16
                            int r6 = kotlin.text.CharsKt.digitToInt(r6, r0)
                            r0 = 2
                            int r0 = kotlin.text.CharsKt.checkRadix(r0)
                            java.lang.String r6 = java.lang.Integer.toString(r6, r0)
                            java.lang.String r0 = "toString(this, checkRadix(radix))"
                            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r0)
                            r0 = 4
                            r1 = 48
                            java.lang.String r6 = kotlin.text.StringsKt.padStart(r6, r0, r1)
                            java.util.ArrayList r0 = new java.util.ArrayList
                            int r1 = r6.length()
                            r0.<init>(r1)
                            r1 = 0
                            r2 = r1
                        L26:
                            int r3 = r6.length()
                            if (r2 >= r3) goto L41
                            char r3 = r6.charAt(r2)
                            r4 = 49
                            if (r3 != r4) goto L36
                            r3 = 1
                            goto L37
                        L36:
                            r3 = r1
                        L37:
                            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
                            r0.add(r3)
                            int r2 = r2 + 1
                            goto L26
                        L41:
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString$Companion$of$bits$2.invoke(char):java.util.List");
                    }
                }
                kotlin.sequences.Sequence r6 = kotlin.sequences.SequencesKt.map(r6, r3)
                kotlin.sequences.Sequence r6 = kotlin.sequences.SequencesKt.flattenSequenceOfIterable(r6)
                java.util.List r6 = kotlin.sequences.SequencesKt.toMutableList(r6)
                boolean r3 = r6.isEmpty()
                if (r3 != 0) goto L76
                int r3 = r6.size()
                java.util.ListIterator r3 = r6.listIterator(r3)
            L53:
                boolean r4 = r3.hasPrevious()
                if (r4 == 0) goto L76
                java.lang.Object r4 = r3.previous()
                java.lang.Boolean r4 = (java.lang.Boolean) r4
                boolean r4 = r4.booleanValue()
                if (r0 == 0) goto L69
                if (r4 != 0) goto L69
                r4 = r2
                goto L6a
            L69:
                r4 = r1
            L6a:
                if (r4 != 0) goto L53
                int r1 = r3.nextIndex()
                int r1 = r1 + r2
                java.util.List r6 = kotlin.collections.CollectionsKt.take(r6, r1)
                goto L7a
            L76:
                java.util.List r6 = kotlin.collections.CollectionsKt.emptyList()
            L7a:
                java.util.List r6 = kotlin.collections.CollectionsKt.dropLast(r6, r0)
                org.ton.bitstring.BitString$Companion r0 = org.ton.bitstring.BitString.Companion
                org.ton.bitstring.BitString r6 = r0.m44of(r6)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.ton.bitstring.BitString.Companion.m45of(java.lang.String):org.ton.bitstring.BitString");
        }
    }
}
