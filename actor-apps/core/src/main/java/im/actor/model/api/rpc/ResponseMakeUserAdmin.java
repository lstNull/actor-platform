package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import im.actor.model.droidkit.bser.util.SparseArray;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class ResponseMakeUserAdmin extends Response {

    public static final int HEADER = 0xd7;
    public static ResponseMakeUserAdmin fromBytes(byte[] data) throws IOException {
        return Bser.parse(new ResponseMakeUserAdmin(), data);
    }

    private List<Member> members;
    private int seq;
    private byte[] state;

    public ResponseMakeUserAdmin(@NotNull List<Member> members, int seq, @NotNull byte[] state) {
        this.members = members;
        this.seq = seq;
        this.state = state;
    }

    public ResponseMakeUserAdmin() {

    }

    @NotNull
    public List<Member> getMembers() {
        return this.members;
    }

    public int getSeq() {
        return this.seq;
    }

    @NotNull
    public byte[] getState() {
        return this.state;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        List<Member> _members = new ArrayList<Member>();
        for (int i = 0; i < values.getRepeatedCount(1); i ++) {
            _members.add(new Member());
        }
        this.members = values.getRepeatedObj(1, _members);
        this.seq = values.getInt(2);
        this.state = values.getBytes(3);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeRepeatedObj(1, this.members);
        writer.writeInt(2, this.seq);
        if (this.state == null) {
            throw new IOException();
        }
        writer.writeBytes(3, this.state);
    }

    @Override
    public String toString() {
        String res = "tuple MakeUserAdmin{";
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
