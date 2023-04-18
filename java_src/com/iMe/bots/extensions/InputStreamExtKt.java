package com.iMe.bots.extensions;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p035io.CloseableKt;
import kotlin.p035io.TextStreamsKt;
import kotlin.text.Charsets;
/* compiled from: InputStreamExt.kt */
/* loaded from: classes3.dex */
public final class InputStreamExtKt {
    public static final String asString(InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            String readText = TextStreamsKt.readText(bufferedReader);
            CloseableKt.closeFinally(bufferedReader, null);
            return readText;
        } finally {
        }
    }
}
