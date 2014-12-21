#ifndef bROwSE_Application_H
#define bROwSE_Application_H

#include <bROwSE/bROwSE.h>
#include <Partitioner2/Partitioner.h>
#include <sawyer/CommandLine.h>
#include <Wt/WApplication>
#include <Wt/WEnvironment>

namespace bROwSE {

class WFunction;
class WAddressSpace;

class Application: public Wt::WApplication {
    Context ctx_;
    Wt::WGridLayout *wGrid_;
    WFunction *wFunction_;
    WAddressSpace *wAddressSpace_;
public:
    Application(P2::Partitioner &partitioner, const Wt::WEnvironment &env)
        : Wt::WApplication(env), ctx_(partitioner, this),  wFunction_(NULL), wAddressSpace_(NULL) {
        init();
    }

    static Sawyer::CommandLine::ParserResult parseCommandLine(int argc, char *argv[], Settings&);

    static void main(int argc, char *argv[]);

private:
    void init();
};

} // namespace
#endif