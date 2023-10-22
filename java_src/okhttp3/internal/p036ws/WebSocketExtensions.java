package okhttp3.internal.p036ws;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Headers;
import okhttp3.internal.Util;
/* compiled from: WebSocketExtensions.kt */
/* renamed from: okhttp3.internal.ws.WebSocketExtensions */
/* loaded from: classes4.dex */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof WebSocketExtensions) {
                WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
                return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && Intrinsics.areEqual(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && Intrinsics.areEqual(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        boolean z = this.perMessageDeflate;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        Integer num = this.clientMaxWindowBits;
        int hashCode = (i + (num != null ? num.hashCode() : 0)) * 31;
        ?? r2 = this.clientNoContextTakeover;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int i3 = (hashCode + i2) * 31;
        Integer num2 = this.serverMaxWindowBits;
        int hashCode2 = (i3 + (num2 != null ? num2.hashCode() : 0)) * 31;
        ?? r22 = this.serverNoContextTakeover;
        int i4 = r22;
        if (r22 != 0) {
            i4 = 1;
        }
        int i5 = (hashCode2 + i4) * 31;
        boolean z2 = this.unknownValues;
        return i5 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ")";
    }

    public WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4) {
        this.perMessageDeflate = z;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z2;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z3;
        this.unknownValues = z4;
    }

    public /* synthetic */ WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : num, (i & 4) != 0 ? false : z2, (i & 8) == 0 ? num2 : null, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? false : z4);
    }

    public final boolean noContextTakeover(boolean z) {
        if (z) {
            return this.clientNoContextTakeover;
        }
        return this.serverNoContextTakeover;
    }

    /* compiled from: WebSocketExtensions.kt */
    /* renamed from: okhttp3.internal.ws.WebSocketExtensions$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WebSocketExtensions parse(Headers responseHeaders) throws IOException {
            boolean equals;
            boolean equals2;
            boolean equals3;
            boolean equals4;
            boolean equals5;
            boolean equals6;
            Integer intOrNull;
            Integer intOrNull2;
            Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            boolean z = false;
            Integer num = null;
            boolean z2 = false;
            Integer num2 = null;
            boolean z3 = false;
            boolean z4 = false;
            for (int i = 0; i < size; i++) {
                equals = StringsKt__StringsJVMKt.equals(responseHeaders.name(i), "Sec-WebSocket-Extensions", true);
                if (equals) {
                    String value = responseHeaders.value(i);
                    int i2 = 0;
                    while (i2 < value.length()) {
                        int delimiterOffset$default = Util.delimiterOffset$default(value, ',', i2, 0, 4, null);
                        int delimiterOffset = Util.delimiterOffset(value, ';', i2, delimiterOffset$default);
                        String trimSubstring = Util.trimSubstring(value, i2, delimiterOffset);
                        int i3 = delimiterOffset + 1;
                        equals2 = StringsKt__StringsJVMKt.equals(trimSubstring, "permessage-deflate", true);
                        if (equals2) {
                            if (z) {
                                z4 = true;
                            }
                            while (i3 < delimiterOffset$default) {
                                int delimiterOffset2 = Util.delimiterOffset(value, ';', i3, delimiterOffset$default);
                                int delimiterOffset3 = Util.delimiterOffset(value, '=', i3, delimiterOffset2);
                                String trimSubstring2 = Util.trimSubstring(value, i3, delimiterOffset3);
                                String removeSurrounding = delimiterOffset3 < delimiterOffset2 ? StringsKt__StringsKt.removeSurrounding(Util.trimSubstring(value, delimiterOffset3 + 1, delimiterOffset2), "\"") : null;
                                int i4 = delimiterOffset2 + 1;
                                equals3 = StringsKt__StringsJVMKt.equals(trimSubstring2, "client_max_window_bits", true);
                                if (equals3) {
                                    if (num != null) {
                                        z4 = true;
                                    }
                                    if (removeSurrounding != null) {
                                        intOrNull2 = StringsKt__StringNumberConversionsKt.toIntOrNull(removeSurrounding);
                                        num = intOrNull2;
                                    } else {
                                        num = null;
                                    }
                                    if (num != null) {
                                        i3 = i4;
                                    }
                                    z4 = true;
                                    i3 = i4;
                                } else {
                                    equals4 = StringsKt__StringsJVMKt.equals(trimSubstring2, "client_no_context_takeover", true);
                                    if (equals4) {
                                        if (z2) {
                                            z4 = true;
                                        }
                                        if (removeSurrounding != null) {
                                            z4 = true;
                                        }
                                        z2 = true;
                                    } else {
                                        equals5 = StringsKt__StringsJVMKt.equals(trimSubstring2, "server_max_window_bits", true);
                                        if (equals5) {
                                            if (num2 != null) {
                                                z4 = true;
                                            }
                                            if (removeSurrounding != null) {
                                                intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(removeSurrounding);
                                                num2 = intOrNull;
                                            } else {
                                                num2 = null;
                                            }
                                            if (num2 != null) {
                                            }
                                            z4 = true;
                                        } else {
                                            equals6 = StringsKt__StringsJVMKt.equals(trimSubstring2, "server_no_context_takeover", true);
                                            if (equals6) {
                                                if (z3) {
                                                    z4 = true;
                                                }
                                                if (removeSurrounding != null) {
                                                    z4 = true;
                                                }
                                                z3 = true;
                                            }
                                            z4 = true;
                                        }
                                    }
                                    i3 = i4;
                                }
                            }
                            i2 = i3;
                            z = true;
                        } else {
                            i2 = i3;
                            z4 = true;
                        }
                    }
                }
            }
            return new WebSocketExtensions(z, num, z2, num2, z3, z4);
        }
    }
}
