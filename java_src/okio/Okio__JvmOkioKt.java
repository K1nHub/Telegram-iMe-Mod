package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JvmOkio.kt */
/* loaded from: classes6.dex */
public final /* synthetic */ class Okio__JvmOkioKt {
    private static final Logger logger = Logger.getLogger("okio.Okio");

    public static final Sink sink(OutputStream sink) {
        Intrinsics.checkNotNullParameter(sink, "$this$sink");
        return new OutputStreamSink(sink, new Timeout());
    }

    public static final Source source(InputStream source) {
        Intrinsics.checkNotNullParameter(source, "$this$source");
        return new InputStreamSource(source, new Timeout());
    }

    public static final Sink sink(Socket sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "$this$sink");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(sink);
        OutputStream outputStream = sink.getOutputStream();
        Intrinsics.checkNotNullExpressionValue(outputStream, "getOutputStream()");
        return socketAsyncTimeout.sink(new OutputStreamSink(outputStream, socketAsyncTimeout));
    }

    public static final Source source(Socket source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "$this$source");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(source);
        InputStream inputStream = source.getInputStream();
        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream()");
        return socketAsyncTimeout.source(new InputStreamSource(inputStream, socketAsyncTimeout));
    }

    public static final Sink sink(File sink, boolean z) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(sink, "$this$sink");
        return Okio.sink(new FileOutputStream(sink, z));
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z, int i, Object obj) throws FileNotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        return Okio.sink(file, z);
    }

    public static final Sink appendingSink(File appendingSink) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(appendingSink, "$this$appendingSink");
        return Okio.sink(new FileOutputStream(appendingSink, true));
    }

    public static final Source source(File source) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(source, "$this$source");
        return Okio.source(new FileInputStream(source));
    }

    public static final boolean isAndroidGetsocknameError(AssertionError isAndroidGetsocknameError) {
        Intrinsics.checkNotNullParameter(isAndroidGetsocknameError, "$this$isAndroidGetsocknameError");
        if (isAndroidGetsocknameError.getCause() != null) {
            String message = isAndroidGetsocknameError.getMessage();
            return message != null ? StringsKt__StringsKt.contains$default((CharSequence) message, (CharSequence) "getsockname failed", false, 2, (Object) null) : false;
        }
        return false;
    }
}
