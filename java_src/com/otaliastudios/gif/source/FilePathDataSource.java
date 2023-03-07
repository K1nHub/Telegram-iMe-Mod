package com.otaliastudios.gif.source;

import android.content.Context;
import com.otaliastudios.gif.internal.Logger;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* loaded from: classes3.dex */
public class FilePathDataSource extends DefaultDataSource {
    private String path;

    static {
        new Logger(FilePathDataSource.class.getSimpleName());
    }

    public FilePathDataSource(Context context, String str) {
        super(context);
        this.path = str;
    }

    @Override // com.otaliastudios.gif.source.DefaultDataSource
    protected InputStream openInputStream() {
        try {
            return new FileInputStream(this.path);
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
